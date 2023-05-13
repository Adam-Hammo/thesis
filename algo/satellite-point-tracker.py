import os
import cv2
import numpy as np
import math
import matplotlib.pyplot as plt
from scipy.spatial.transform import Rotation
from mpl_toolkits import mplot3d
import copy

IMG_FOLDER = "Data/cam"
TELEM_FOLDER = "Data/telem"
MIN_SAT_SIZE = 200
BLACK_NOISE_LEVEL = 32
WHITE_NOISE_LEVEL = 64
FAILURE_TOLERANCE = 20

CAM_Z_VECTOR = np.array([1.0, 0.0, 0.0]) # x, y, z body, normal to image plane
CAM_X_VECTOR = np.array([0.0, 0.0, 1.0]) # x, y, z body
CAM_Y_VECTOR = np.array([0.0, 1.0, 0.0]) # x, y, z body
SAT_OFFSET = [7.29*500,-2.23*500,0] # offset in pixel-metres
PX_OFFSET = np.array([0,0,0])
# SAT_OFFSET = [0,0,0]
MAX_T = 788

IMG_X = 1600
IMG_Y = 900
FOV_Y_ANGLE = np.deg2rad(30)
FOV_X_ANGLE = FOV_Y_ANGLE*IMG_X/IMG_Y
focal_length_x = IMG_X / 2 / math.tan(FOV_X_ANGLE/2)
focal_length_y = IMG_Y / 2 / math.tan(FOV_Y_ANGLE/2)

USE_EST_DEPTH = False

vid = cv2.VideoWriter('satellite-tracking.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 10, (IMG_X,IMG_Y))

with open("Data/telem/pn03.42",'r') as f:
    host_positions = np.array([[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()])

with open("Data/telem/pn12.42",'r') as f:
    target_positions = np.array([[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()])

with open('Data/telem/qn03.42','r') as f:
    host_attitudes = [Rotation.from_quat([float(n) for n in l.split(' ')[:-1]]) for l in f.readlines() if not l.isspace()] # quaternions, ECI to body

actual_depths = [abs(math.sqrt(p1[0]**2+p1[1]**2+p1[2]**2)-math.sqrt(p2[0]**2+p2[1]**2+p2[2]**2)) for t, (p1, p2) in enumerate(zip(host_positions, target_positions)) if t <= MAX_T]
relative_positions = [np.array([x2-x1 for x1, x2 in zip(p1,p2)]) for t, (p1, p2) in enumerate(zip(host_positions, target_positions)) if t <= MAX_T]
# Calibrate depth model
px_0 = 70
# print(d_0)
m_0 = px_0*actual_depths[0]/focal_length_y

images = sorted([f for f in os.listdir(IMG_FOLDER) if f.endswith('ppm')])
def img_generator():
    for image_path in images:
        img = cv2.imread(IMG_FOLDER+'/'+image_path)
        yield img

def process_image(img):
    # change to greyscale and filter out noise 
    # img = cv2.medianBlur(img,5)
    imgray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    _, black_mask = cv2.threshold(imgray, BLACK_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
    # _, white_mask = cv2.threshold(~imgray, WHITE_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
    
    # thresh = black_mask - ~white_mask
    thresh = black_mask

    # cv2.imshow("Greyed", thresh)
    # cv2.waitKey(0)

    # filter out stars
    nlabels, labels, stats, _ = cv2.connectedComponentsWithStats(thresh, None, None, None, 8, cv2.CV_32S)
    areas = stats[1:,cv2.CC_STAT_AREA]
    filtered = np.zeros((labels.shape), np.uint8)
    for i in range(0, nlabels - 1):
        if areas[i] >= MIN_SAT_SIZE:   #keep
            filtered[labels == i + 1] = 255
    
    # cv2.imshow("Filtered", filtered)

    # blur
    kernel = np.ones((3,3),np.float32)/9
    filtered = cv2.filter2D(filtered,-1,kernel)

    # Find object(s)
    contours, _ = cv2.findContours(
        filtered, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
    return img, filtered, contours

def intersection_area(a,b):
  x = max(a[0], b[0])
  y = max(a[1], b[1])
  w = min(a[0]+a[2], b[0]+b[2]) - x
  h = min(a[1]+a[3], b[1]+b[3]) - y
  if w<0 or h<0: return 0
  return w*h

trackers = []
failures = []
observations = []
uids = []
objects = []
uid = 1

measured_depths = []
relative_pos_image_frame = []
image_coords = []


for t,img in enumerate(img_generator()):
    point_tracking_img = np.zeros([IMG_Y, IMG_X], dtype = "uint8")
    img, filtered, contours = process_image(img)
    contour = contours[0]
    approx_poly = cv2.approxPolyDP(contour, 2, True)
    # approx_poly = contour
    
    # Filter points according to our criteria
    filtered_points = []
    points_top_to_bottom = sorted(approx_poly, key=lambda p:p[0][1])
    points_left_to_right = sorted(approx_poly, key=lambda p:p[0][0])

    # First, take the two highest points and the six rightmost points
    filtered_points.extend(points_top_to_bottom[:2])
    filtered_points.extend(points_left_to_right[-6:])


    for point in filtered_points:
        point_tracking_img = cv2.circle(point_tracking_img, point[0], 0, (255,255,255), 3)

    for j,tracker in enumerate(trackers):
        success, box = tracker.update(point_tracking_img)
        if success: 
            objects[j] = box
            failures[j] = 0
        else:
            failures[j]+=1
            if failures[j] >= FAILURE_TOLERANCE:
                del failures[j]
                del trackers[j]
                del uids[j]
                del objects[j]



    rects = []
    rotated_rects = []
    rotated_rect_lengths = []
    for contour in contours:
        rect = cv2.boundingRect(contour)
        if rect[2]*rect[3]<300:
            continue
            
        rects.append(rect)
        rotated_rect = cv2.minAreaRect(contour)
        rotated_rects.append(rotated_rect)
        rotated_rect_lengths.append(max(rotated_rect[1][0],rotated_rect[1][1]))

        box = cv2.boxPoints(rotated_rect)
        box = np.int0(box)

    if t == 0:
        for point in filtered_points:
            tracker = cv2.TrackerCSRT_create()
            tracker.init(filtered, [point[0][0]-2,point[0][1]-2,5,5])
            trackers.append(tracker)
            uids.append(uid)
            uid+=1
            failures.append(0)
            objects.append(rect)

    print(len(trackers), len(failures), len(uids), len(objects))
    for j,box in enumerate(objects):
        if failures[j] == 0:
            x, y, w, h = [int(v) for v in box]
            cv2.rectangle(img, (x, y), (x + w, y + h-2), (0, 255, 0), 1)

    # if len(objects) == 0 or t >= MAX_T:
    #     break
    
    # box = objects[-1]
    # length_px = rotated_rect_lengths[0]

    # # build x,y,z coordinate of target spacecraft in image coordinates
    # x, y = box[0] + box[2]/2, box[1] + box[3]/2 # pixels
    # print(t, x-IMG_X/2, y-IMG_Y/2, length_px)
    # r = focal_length_y*m_0/length_px # m
    # line_of_sight_vector =  np.array([x-IMG_X/2,y-IMG_Y/2,focal_length_y])+PX_OFFSET # pixels
    # image_coords.append(copy.deepcopy(line_of_sight_vector))
    # line_of_sight_vector /= focal_length_y # unit
    # line_of_sight_vector *= r if USE_EST_DEPTH else actual_depths[t]
    # measured_depths.append(r)
    # relative_pos_image_frame.append(line_of_sight_vector)

    print(trackers)

    vid.write(img)
    cv2.imshow("Contoured", img)
    cv2.imshow("Points", point_tracking_img)
    # cv2.imshow("Points", img)
    key = cv2.waitKey(0)
        
    if key == ord("q"):
        break
