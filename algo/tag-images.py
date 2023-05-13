
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d
import cv2
import os
import csv


IMG_FOLDER = "Data/cam"
TELEM_FOLDER = "Data/telem"
MIN_STAR_SIZE = 80
BG_NOISE_LEVEL = 32
FAILURE_TOLERANCE = 20


with open(TELEM_FOLDER+'/pn03.42','r') as f:
    campos = [[float(n) for n in l.split(' ')[:-1]] for l in f.readlines() if not l.isspace()]

with open(TELEM_FOLDER+'/qn03.42','r') as f:
    camatt = [[float(n) for n in l.split(' ')[:-1]] for l in f.readlines() if not l.isspace()]

with open(TELEM_FOLDER+'/pn12.42','r') as f:
    targetpos = [[float(n) for n in l.split(' ')[:-1]] for l in f.readlines() if not l.isspace()]

with open(TELEM_FOLDER+'/time.42','r') as f:
    time = [float(l) for l in f.readlines() if not l.isspace()]


images = sorted([f for f in os.listdir(IMG_FOLDER) if f.endswith('ppm')])
def img_generator():
    for image_path in images:
        img = cv2.imread(IMG_FOLDER+'/'+image_path)
        yield img

def process_image(img):
    # change to greyscale and filter out noise 
    # img = cv2.medianBlur(img,5)
    imgray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    _, thresh = cv2.threshold(imgray, BG_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
    # cv2.imshow("Greyed", thresh)

    # filter out stars
    nlabels, labels, stats, _ = cv2.connectedComponentsWithStats(thresh, None, None, None, 8, cv2.CV_32S)
    areas = stats[1:,cv2.CC_STAT_AREA]
    filtered = np.zeros((labels.shape), np.uint8)
    for i in range(0, nlabels - 1):
        if areas[i] >= MIN_STAR_SIZE:   #keep
            filtered[labels == i + 1] = 255
    
    # cv2.imshow("Filtered", filtered)

    # Find object(s)
    contours, _ = cv2.findContours(
        filtered, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
        
    return img, filtered, contours

def intersection_area(a,b):
  x = max(a[0], b[0])
  y = max(a[1], b[1])
  w = min(a[0]+a[2], b[0]+b[2]) - x
  h = min(a[1]+a[3], b[1]+b[3]) - y
  if w<0 or h<0: return 0
  return w*h

gen = img_generator()
trackers = []
failures = []
observations = []
uids = []
objects = []
uid = 1
for i,img in enumerate(gen):
    print(f"Processing frame {i}")
    img, bw, contours = process_image(img)

    # for contour in contours:
    #     cv2.drawContours(img, [contour], 0, (0,255,0), 3)

    for j,tracker in enumerate(trackers):
        success, box = tracker.update(bw)
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

    rects = [cv2.boundingRect(contour) for contour in contours]
    rects = [rect for rect in rects if rect[2]*rect[3]>100]
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
            tracker.init(bw, rect)
            trackers.append(tracker)
            uids.append(uid)
            uid+=1
            failures.append(0)
            objects.append(rect)

    print(len(trackers), len(failures), len(uids), len(objects))
    for j,box in enumerate(objects):
        if not box:
            continue
        if failures[j] == 0:
            x, y, w, h = [int(v) for v in box]
            cv2.rectangle(img, (x, y), (x + w, y + h), ((51%(j+1)-1)*5, 255, 0), 2)
            observations.append((i,uids[j],box))

    print(f"Processed frame {i}")
    cv2.imshow("Contoured", img)
    key = cv2.waitKey(1)
    if key == ord("q"):
        break

with open('Data/observations.csv','w') as f:
    wtr = csv.writer(f)
    wtr.writerow(["Time (s)", "Seq", "Left (px)", "Right (px)", "Width (px)", "Height (px)"])
    wtr.writerows([
        [o[0],
        o[1],
        o[2][0],
        o[2][1],
        o[2][2],
        o[2][3]]
        for o in observations
    ])