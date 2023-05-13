import csv
import math
import matplotlib.pyplot as plt
import numpy as np
from scipy.spatial.transform import Rotation
import scipy.io
from sklearn import linear_model
import cv2

IMG_X = 1680
IMG_Y = 997
FOV_Y_ANGLE = np.deg2rad(30)
FOV_X_ANGLE = FOV_Y_ANGLE*IMG_X/IMG_Y
# INV_FRAMERATES = [4,5,8,10]
STAR_SIZES = [50]
WEIGHT_FUNCTIONS = [(lambda x: 1)]
INV_FRAMERATES = [4]
# STAR_SIZES = [50]
# WEIGHT_FUNCTIONS = [(lambda x: 1)]
MAX_T = 700
# ot = [10000,np.deg2rad(30)]
# OUTLIER_TOLERANCE = np.deg2rad(20)
WEIGHT_FN_NAMES = ["None"]
THRESHOLDS = [0.0005]

legend = []

for s in STAR_SIZES:
    for threshold in THRESHOLDS:
        for inv_framerate in INV_FRAMERATES:
            for wi, wfn in enumerate(WEIGHT_FUNCTIONS):
                print(s,threshold,inv_framerate,wi)
                with open(f"Data/saved-observations-{s}.csv", 'r') as f:
                    rdr = csv.reader(f)
                    skip = True
                    data = []
                    for r in rdr:
                        if skip:
                            skip = False
                            continue
                        data.append([int(x) for x in r])

                with open('Data/telem/qn03.42','r') as f:
                    atts = [Rotation.from_quat([float(n) for n in l.split(' ')[:-1]]) for l in f.readlines() if not l.isspace()] # quaternions, ECI to body

                focal_length_x = IMG_X / 2 / math.tan(FOV_X_ANGLE/2)
                focal_length_y = IMG_Y / 2 / math.tan(FOV_Y_ANGLE/2)

                base_vec = np.array([1,1,1])
                base_vec_actual = np.array([1,1,1]) # just random
                base_vec_estimated = np.array([1,1,1]) # just random

                T_cam_body = np.matrix([
                    [0,0,1],
                    [1,0,0],
                    [0,1,0]
                ])

                prev_obvs = {}
                new_obvs = {}
                prev_attitude = atts[0]
                curr_time = 0
                transformations = []
                cum_errs = []
                errs = []
                attitude_act = []
                attitude_est = []
                for point in data:

                    time = int(point[0])

                    if time%inv_framerate != 0:
                        continue

                    o = int(point[1])
                    if o in (1,2) :
                        # sun and spacecraft, manually remove for now
                        continue

                    x = int(point[2])
                    y = int(point[3])
                    w = int(point[4])
                    h = int(point[5])

                    if w*h > 200:
                        continue

                    attitude = atts[time]

                    new_obvs[o] = [x+w/2,y+h/2,w*h]

                    if time >= MAX_T:
                        break

                    if time != curr_time:
                        delta_act = Rotation.from_matrix(prev_attitude.as_matrix().T @ attitude.as_matrix())
                        # print(delta_act.as_euler('xyz', degrees=True))
                        # Match off observations, ensuring order is maintained
                        prev_vecs = []
                        new_vecs = []
                        weights = []
                        matching_features = set(new_obvs.keys()) & set(prev_obvs.keys())

                        if len(matching_features) >= 1:
                            # build vectors
                            for obj in matching_features:
                                prev = prev_obvs[obj]
                                prev_vec = np.array([prev[0]-IMG_X/2,prev[1]-IMG_Y/2,focal_length_y])
                                prev_vec /= np.linalg.norm(prev_vec)
                                new = new_obvs[obj]
                                new_vec = np.array([new[0]-IMG_X/2,new[1]-IMG_Y/2,focal_length_y])
                                new_vec /= np.linalg.norm(new_vec)
                                prev_vecs.append(prev_vec)
                                new_vecs.append(new_vec)
                                weights.append(wfn(new[2]))
                            # print(len(new_vecs))
                            prev_vecs = np.array(prev_vecs)
                            new_vecs = np.array(new_vecs)
                            weights = np.array(weights)
                            # diff = np.array(new_vecs)-np.array(prev_vecs)
                            # print(prev_vecs)
                            # print(new_vecs)
                            if len(new_vecs) < (4 if s == 50 else 2):
                                continue
                            ransac = linear_model.RANSACRegressor(
                                # base_estimator=linear_model.LinearRegression,
                                min_samples = 4 if s == 50 else 2,
                                residual_threshold = threshold
                            )
                            ransac.fit(prev_vecs, new_vecs)
                            # print(ransac.score(prev_vecs, new_vecs))
                            # print(all(ransac.inlier_mask_))

                            prev_vecs = prev_vecs[ransac.inlier_mask_]
                            new_vecs = new_vecs[ransac.inlier_mask_]
                            weights = weights[ransac.inlier_mask_]

                            # avg_diff = sum(diff)/len(diff)
                            # npopped = 0
                            # for i,v in enumerate(diff):
                            #     if sum(v-avg_diff) < 0.001:
                            #         continue

                            #     ang = math.acos(np.dot(v,avg_diff)/np.linalg.norm(v)/np.linalg.norm(avg_diff))
                            #     if ang > ot[wi]:
                            #         new_vecs.pop(i-npopped)
                            #         prev_vecs.pop(i-npopped)
                            #         weights.pop(i-npopped)
                            #         npopped += 1
                                
                            if len(new_vecs) == 0:
                                continue

                            delta_est, rmsd = Rotation.align_vectors(
                                prev_vecs,
                                new_vecs,
                                weights
                            )

                            # identify singularities and use previous measurements
                            if rmsd < 1e-6 or rmsd > 0.1:
                                cum_errs.append(cum_errs[-1]+errs[-1])
                                errs.append(errs[-1])
                                # if failed a few times in a row
                                recent = errs[-5:]
                                if recent.count(recent[0]) == len(recent):
                                    break
                                continue
                            # print(time)
                            # print(rmsd)
                            # print(delta_act.as_euler('xyz', degrees=True))
                            # print(delta_est.as_euler('yzx', degrees=True))
                            # input()
                            delta_est = delta_est.from_euler('yzx',delta_est.as_euler('xyz'))
                            R = np.matmul(delta_act.as_matrix(),delta_est.as_matrix().T)
                            errs.append(np.rad2deg(math.acos((np.trace(R)-1)/2)))            
                            base_vec_estimated = delta_est.apply(base_vec_estimated)
                            base_vec_actual = delta_act.apply(base_vec_actual)
                            # R_est = np.matmul(delta_est.as_matrix(),R_est)
                            # R_act = np.matmul(delta_act.as_matrix(),R_act)
                            if len(attitude_act)==0:
                                R_est = delta_est
                                R_act = delta_act
                                attitude_act.append(delta_act)
                                attitude_est.append(delta_est)
                            else:
                                R_est *= delta_est
                                R_act *= delta_act
                                attitude_act.append(delta_act*attitude_act[-1])
                                attitude_est.append(delta_est*attitude_est[-1])

                            cum_errs.append(np.rad2deg(math.acos((np.trace(np.matmul(R_act.as_matrix(),R_est.as_matrix().T))-1)/2)))
                            
                        prev_obvs = new_obvs
                        new_obvs = {}


                        prev_attitude = attitude


                    curr_time = time

                plt.figure(1)
                # if s == STAR_SIZES[1] and wi == 0 and inv_framerate == INV_FRAMERATES[0]:
                #     plt.gca().set_prop_cycle(None)
                plt.plot(np.arange(1,len(cum_errs)+1)*inv_framerate, cum_errs, linestyle='-' if s==50 else '--')
                # plt.plot(np.arange(1,len(cum_errs)+1)*inv_framerate, cum_errs)
                legend.append(f"framerate {1/inv_framerate}, residual threshold {threshold}")

                plt.figure(2)
                attitude_act = np.array([a.as_quat() for a in attitude_act])
                attitude_est = np.array([a.as_quat() for a in attitude_est])
                plt.plot(np.arange(1,len(cum_errs)+1)*inv_framerate,attitude_act)
                plt.plot(np.arange(1,len(cum_errs)+1)*inv_framerate,attitude_est)
                plt.xlabel("Time (s)")
                plt.ylabel("Quaternion Value")
                plt.legend(["q0, actual", "q1, actual", "q2, actual", "q3, actual","q0, estimated", "q1, estimated", "q2, estimated", "q3, estimated"])
            
# plt.figure(1)
# # plt.legend([f"Residual Threshold {t}" for t in THRESHOLDS])
# plt.legend(legend)
# plt.xlabel("Time (s)")
# plt.ylabel("Err (deg)")
# plt.show()

# plt.figure(2)
# plt.show()

scipy.io.savemat("cam_attitude_est", {"err": cum_errs})
# [print(t) for t in transformations]