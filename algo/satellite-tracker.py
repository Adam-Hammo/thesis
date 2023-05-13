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
# SAT_OFFSET = [7.3*500,-2.23*500,0] # offset in pixel-metres
PX_OFFSET = np.array([25.5,-8.5,0])/500
SAT_OFFSET = [0,0,0]
MAX_T = 300

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
    img, filtered, contours = process_image(img)
    # for contour in contours:
    #     approx_poly = cv2.approxPolyDP(contour, 3, True)
    #     # cv2.drawContours(img, [approx_poly], -1,(0,255,0),2)
        # for point in approx_poly:
        #     img = cv2.circle(img, point[0], 0, (0,255,0), 2)
    cv2.drawContours(img,contours,-1,(0,255,0),1)
    # cv2.imshow("Filtered", img)
    # cv2.waitKey(0)

    for j,tracker in enumerate(trackers):
        success, box = tracker.update(filtered)
        if success: 
            img = cv2.rectangle(img, (box[0],box[1]), (box[0]+box[2], box[1]+box[3]), (0,0,255), 1)
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
        cv2.drawContours(img,[box],0,(255,0,0),1)

    rects.sort(key=lambda x: -x[2]*x[3])
    for rect in rects:
        exists = False
        for box in objects:
            if not box:
                continue
            ia = intersection_area(rect,box)
            if ia/(max(box[2]*box[3],rect[2]*rect[3])) > 0.3 or ia/(rect[2]*rect[3]) > 0.6:
                exists = True
                break
        if not exists:
            tracker = cv2.TrackerCSRT_create()
            tracker.init(filtered, rect)
            trackers.append(tracker)
            uids.append(uid)
            uid+=1
            failures.append(0)
            objects.append(rect)

    # print(len(trackers), len(failures), len(uids), len(objects))
    for j,box in enumerate(objects):
        if not box:
            continue

    if len(objects) == 0 or t >= MAX_T:
        break
    
    box = objects[-1]
    length_px = rotated_rect_lengths[0]

    # build x,y,z coordinate of target spacecraft in image coordinates
    x, y = box[0] + box[2]/2, box[1] + box[3]/2 # pixels
    print(t, x-IMG_X/2, y-IMG_Y/2, length_px)
    r = focal_length_y*m_0/length_px # m
    line_of_sight_vector =  np.array([x-IMG_X/2,y-IMG_Y/2,focal_length_y])+PX_OFFSET*r # pixels
    image_coords.append(copy.deepcopy(line_of_sight_vector))
    line_of_sight_vector /= np.linalg.norm(line_of_sight_vector) # unit
    line_of_sight_vector *= r if USE_EST_DEPTH else actual_depths[t]
    measured_depths.append(r)
    relative_pos_image_frame.append(line_of_sight_vector)

    vid.write(img)
    cv2.imshow("Contoured", img)
    key = cv2.waitKey(1)
        
    if key == ord("q"):
        break


calculated_positions = []
calculated_relative_positions = []
filt_relative_positions = []
for t, relative_position in enumerate(relative_pos_image_frame):
    host_att = host_attitudes[t]
    host_pos = host_positions[t]

    # Convert attitude from body frame to image frame
    # host_att = Rotation.from_euler('xyz', host_att.as_euler('xyz'))
    print(t)
    print(host_att.as_euler('xyz'))
    # print(np.array(SAT_OFFSET)*np.linalg.norm(relative_position))
    # host_att = host_att.from_euler('yzx',host_att.as_euler('xzy'))

    relative_position += np.array(SAT_OFFSET)/np.linalg.norm(relative_position)
    relative_position = np.array([relative_position[1],relative_position[0],relative_position[2]])
    # print(relative_position)
    # relative_position *= -1
    # relative_position = np.array([-1.27983124,    0.99426214, -497.54441694])
    # relative_position[2] *= -1
    # relative_position[1] *= -1
    # relative_position[0] *= -1
    relative_inertial_position = host_att.apply(relative_position[::-1])
    # relative_inertial_position[1] *= -1
    # relative_inertial_position = Rotation.from_euler('xyz', [0,0,-math.pi/2]).apply(relative_inertial_position)
    # relative_inertial_position = [relative_inertial_position[1],relative_inertial_position[0],relative_inertial_position[1]]
    if abs(relative_inertial_position[0]) < 700: 
        calculated_relative_positions.append(relative_inertial_position)
        calculated_positions.append(host_pos + relative_inertial_position)
        filt_relative_positions.append(relative_positions[t])

    # host_att = host_att.from_euler('yzx',host_att.as_euler('xyz'))
    actual_line_of_sight = host_att.apply(relative_positions[t],inverse=True)[::-1]
    actual_line_of_sight = np.array([actual_line_of_sight[1], actual_line_of_sight[0], actual_line_of_sight[2]])

    print(relative_position)
    print(actual_line_of_sight)
    print(relative_inertial_position)
    print(relative_positions[t])
    # print(host_pos)
    # print(host_pos + relative_inertial_position)
    # print(target_positions[t])
    # input()

    norm_line_of_sight = actual_line_of_sight/np.linalg.norm(actual_line_of_sight)
    camera_vector = norm_line_of_sight * (focal_length_y/norm_line_of_sight[2])
    print(camera_vector)
    print(image_coords[t])
    print(norm_line_of_sight)
    print(image_coords[t]/np.linalg.norm(image_coords[t]))

    target_pos = target_positions[t]

vid.release()

# plt.plot(actual_depths)
# plt.scatter(range(len(measured_depths)), measured_depths, c='red', marker='x')
# plt.xlabel("Time (s)")
# plt.ylabel("Depth (m)")
# plt.legend(["Actual Depth", "Measured Depth"])
# plt.show()

fig = plt.figure(1)
ax = plt.axes(projection='3d')
# ax.scatter3D([c[0] for c in calculated_positions], [c[1] for c in calculated_positions], [c[2] for c in calculated_positions])
# ax.plot3D([c[0] for c in target_positions], [c[1] for c in target_positions], [c[2] for c in target_positions])
ax.scatter3D([c[0] for c in calculated_relative_positions], [c[1] for c in calculated_relative_positions], [c[2] for c in calculated_relative_positions], c='red', marker='x')
ax.plot3D([c[0] for c in relative_positions], [c[1] for c in relative_positions], [c[2] for c in relative_positions])

fig = plt.figure(2)
zipped = list(zip(calculated_relative_positions, filt_relative_positions))
# plt.plot(range(len(zipped)), [abs((x1[0]-x2[0])/x2[0]) for x1,x2 in zipped])
# plt.plot(range(len(zipped)), [abs((x1[1]-x2[1])/x2[1]) for x1,x2 in zipped])
# plt.plot(range(len(zipped)), [abs((x1[2]-x2[2])/x2[2]) for x1,x2 in zipped])
plt.plot(range(len(zipped)), [100*math.sqrt((x1[0]-x2[0])**2+(x1[1]-x2[1])**2+(x1[2]-x2[2])**2)/math.sqrt(x2[0]**2+x2[1]**2+x2[2]**2) for x1,x2 in zipped])
plt.xlabel("Time (s)")
plt.ylabel("Error (%)")
# plt.legend(["x", "y", "z", "Total"])

# plt.figure(3)
# attitude_act = np.array([a.as_euler('xyz') for a in host_attitudes])
# plt.plot(np.arange(1,MAX_T+1),attitude_act[:MAX_T])


plt.show()
