import numpy as np
from pyquaternion import Quaternion
import math
import os
import cv2
import csv
import matplotlib.pyplot as plt

"""Number of trackers failed: 41/600
Average x-pixel error: 0.6935542607428987
Average y-pixel error: 0.8934814275309542"""

TELEM_FOLDER = "Data/telem"
CAM_FOLDER = "Data/cam"
CAM_Z_VECTOR = np.array([1.0, 0.0, 0.0]) # x, y, z body, normal to image plane
CAM_X_VECTOR = np.array([0.0, 0.0, 1.0]) # x, y, z body
CAM_Y_VECTOR = np.array([0.0, 1.0, 0.0]) # x, y, z body
MAX_T = 500

IMG_X = 1680
IMG_Y = 997
FOV_Y_ANGLE = np.deg2rad(30)
FOV_X_ANGLE = FOV_Y_ANGLE*IMG_X/IMG_Y
focal_length_x = IMG_X / 2 / math.tan(FOV_X_ANGLE/2)
focal_length_y = IMG_Y / 2 / math.tan(FOV_Y_ANGLE/2)

K = np.matrix([
    [focal_length_x, 0, IMG_X/2],
    [0, focal_length_y, IMG_Y/2],
    [0,0,1]
])

with open(TELEM_FOLDER+'/qn03.42','r') as f:
    vals = [[float(n) for n in l.split(' ')[:-1]] for l in f.readlines() if not l.isspace()] # quaternions, ECI to body
    camatt = [Quaternion([v[3]]+v[0:3]).unit for v in vals]

with open('Data/starmap.txt', 'r') as f:
    f.readline()
    # ECI unit vector of star
    stars = np.array([np.array([float(n) for n in l.split(' ')[:] if n != '']) for l in f.readlines() if not l.isspace()])

# sort by magnitude to try get more early exits
stars = stars[stars[:,-1].argsort()]

obs = []
with open("Data/saved-observations-50.csv", 'r') as f:
    rdr = csv.reader(f)
    skip = True
    obs = []
    for r in rdr:
        if skip:
            skip = False
            continue
        obs.append([int(x) for x in r])

# pick out the star in question
obs = [d for d in obs if d[0] <= MAX_T]
t = [o[0] for o in obs]

images = sorted([f for f in os.listdir(CAM_FOLDER) if f.endswith('ppm')])
def CAM_generator():
    for image_path in images:
        img = cv2.imread(CAM_FOLDER+'/'+image_path)
        yield img

gen = CAM_generator()

error_x = []
error_y = []

tracker_validated = []
for i,quat in enumerate(camatt):

    try :
        img = next(gen)
    except StopIteration:
        break
    print(i)
    if i == MAX_T:
        break

    for star_vector in stars:
        star_vector[3] = False

    # for each tracker
    for o in [o for o in obs if o[0]==i]:
        if o[1] <= 2:
            continue
        # if i not in t:
        #     continue
        found = False
        left = o[2]
        top = o[3]
        width = o[4]
        height = o[5]
        if width*height > 500:
            continue
        for star_vector in stars:
            if star_vector[3]:
                continue
            # calculate star vector in body frame
            star_body_frame = quat.inverse.rotate(star_vector[:3])

            # project star vector along image axes
            star_x = star_body_frame - np.dot(CAM_X_VECTOR,star_body_frame)*CAM_X_VECTOR
            star_y = star_body_frame - np.dot(CAM_Y_VECTOR,star_body_frame)*CAM_Y_VECTOR
            star_x /= np.linalg.norm(star_x)
            star_y /= np.linalg.norm(star_y)

            # find angle between star projections and vector normal to image plane
            x_ang = math.acos(np.dot(CAM_Z_VECTOR, star_x))
            y_ang = math.acos(np.dot(CAM_Z_VECTOR, star_y))

            focal_length = focal_length_y

            x_offset = math.tan(x_ang)*focal_length
            y_offset = math.tan(y_ang)*focal_length

            if x_offset > IMG_X/2 or y_offset > IMG_Y/2:
                continue

            # im sure i can find a way to properly calculate this but for now, bruteforce
            for x_sign in (-1,1):
                for y_sign in (-1,1):
                    xpix = int(IMG_X/2+x_sign*x_offset)
                    ypix = int(IMG_Y/2+y_sign*y_offset)

                    if xpix >= left and xpix <= left+width and ypix >= top and ypix <= top+height:
                        found = True
                        x = left + width/2
                        y = top + height/2
                        xerr = math.floor(xpix-x) if xpix>x else math.ceil(xpix-x)
                        yerr = math.floor(ypix-y) if ypix>y else math.ceil(ypix-y)
                        tracker_validated.append([i,o[1],xerr,yerr])
                        # if abs(ypix-y) > 4:
                        #     print(o[1])
                        img = cv2.rectangle(img,(left,top),(left+width,top+height), (0,255,0))
                        img = cv2.circle(img, (xpix,ypix), radius=0, color=(255,0,0), thickness=5)
                        star_vector[3] = True
                        # print(xpix,ypix,x,y)
            if found:
                break

        if not found:
            tracker_validated.append([i,o[1],None,None])

    cv2.imshow("Projected vs tracked", img)
    cv2.imwrite("projected-star.png", img)
    cv2.waitKey(1)

    # print(tracker_validated)
        # if xpix < 0 or ypix < 0 or xpix >= IMG_X or ypix >= IMG_Y:
        #     continue

    # img = cv2.rectangle(img,(left,top),(left+width,top+height), (0,255,0))
    # img = cv2.circle(img, (xpix,ypix), radius=0, color=(255,0,0), thickness=5)
    # cv2.imshow("Projected vs tracked", img)
    # cv2.imwrite("projected-star.png", img)
    # cv2.waitKey(0)

unique_failed_trackers = set()
unique_trackers = set()
x_error = []
x_error_hist = {}
y_error = []
y_error_hist = {}
print(tracker_validated)
for validation in tracker_validated:
    unique_trackers.add(validation[1])
    if validation[2] is None:
        unique_failed_trackers.add(validation[1])
    else:
        x_error.append(validation[2])
        y_error.append(validation[3])
        if validation[2] not in x_error_hist:
            x_error_hist[validation[2]]=0
        if validation[3] not in y_error_hist:
            y_error_hist[validation[3]]=0
        x_error_hist[validation[2]]+=1
        y_error_hist[validation[3]]+=1
print(f"Number of trackers failed: {len(unique_failed_trackers)}/{len(unique_trackers)}")
print(f"Average x-pixel error: {sum(x_error)/len(x_error)}")
print(f"Average y-pixel error: {sum(y_error)/len(y_error)}")

plt.figure(1)
plt.bar(x_error_hist.keys(),x_error_hist.values())
# plt.xticks(list(set(x_error)))
plt.xlabel("Pixel error")
plt.ylabel("Occurrences")
plt.show()

plt.figure(2)
plt.bar(y_error_hist.keys(),y_error_hist.values())
# plt.xticks(list(set(y_error)))
plt.xlabel("Pixel error")
plt.ylabel("Occurrences")
plt.show()
# input()