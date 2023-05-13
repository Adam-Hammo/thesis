import cv2
import numpy as np
import matplotlib.pyplot as plt
import copy

IMG_FOLDER = "Data/8Kcam"
TELEM_FOLDER = "Data/telem"
template = cv2.imread("Data/8Ktemplate.png",0)
BLACK_NOISE_LEVEL = 24

MIN_T = 4
MAX_T = 788

base_scale = 1
template_window = [template]
template_matches = []

FRAMERATE = 1
WINDOW_SIZE = 10
# The correspondences really shouldn't move much as they are tracked inside templates
MAX_MATCH_DIST_Y = 6
MAX_MATCH_DIST_X = 10

ROI_BUFFER = 5

IMG_X = 7680
IMG_Y = 4320

# % of image to erode in each direction
ERODE_X = 1
ERODE_Y = 2

# % a satellite segmentation contour must take up of the entire template
MIN_SAT_CONTOUR_PORTION = 2

th, tw = template.shape
# vid0 = cv2.VideoWriter('final-dataset.mp4')
# vid = cv2.VideoWriter('final-templates.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 20, (tw,th), 0)
vid2 = cv2.VideoWriter('final-erosion.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 20, (tw,th), 0)
# vid3 = cv2.VideoWriter('final-template_matches-in-img.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 20, (IMG_X,IMG_Y), 0)
# vid4 = cv2.VideoWriter('final-feature-template_matches.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 20, (tw*2,th*2))
# vid5 = cv2.VideoWriter('optical-flow.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 5, (IMG_X,IMG_Y))

images = sorted([f for f in os.listdir(IMG_FOLDER) if f.endswith('png')])
def img_generator():
    for image_path in images:
        yield IMG_FOLDER+'/'+image_path

body_pts_ls = []
panel_pts_ls = []

def segment_image(img):
    fact = 0
    contours = []
    first_lone_contour = None
    while len(contours) < 2 and fact < 10:
        ret, thresh = cv2.threshold(img, BLACK_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
        erosion_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (int((right-left)*(ERODE_X+fact)/100), int((bottom-top)*(ERODE_Y+fact)/100)))
        eroded = cv2.erode(thresh, erosion_kernel)
        contours, hierarchy = cv2.findContours(eroded, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        fact+=1
        contours = [c for c in contours if cv2.contourArea(c) >= template_match_h*template_match_w*MIN_SAT_CONTOUR_PORTION/100]
        if len(contours) == 1 and first_lone_contour is None:
            first_lone_contour = contours[0]
    # contours_only = ~np.zeros_like(eroded)
    # cv2.drawContours(contours_only, contours, -1, 0, 1)
    # cv2.imshow("Eroded", contours_only)
    # cv2.waitKey(0)
    if len(contours) < 2 :
        print("breaking due to erosion failure")
        # continue

    contours_only = ~np.zeros_like(eroded)
    vid2.write(cv2.copyMakeBorder(contours_only,0,th-contours_only.shape[0],0,tw-contours_only.shape[1],cv2.BORDER_CONSTANT,value=0))
    cv2.drawContours(contours_only, contours, -1, 0, 1)

    sat_contours = sorted(contours, key=lambda c: cv2.contourArea(c), reverse=True)
    if len(sat_contours) <= 1:
        print("WARNING: only one contour")
        sat_contours = [first_lone_contour, first_lone_contour]
    else:
        sat_contours = sat_contours[:2]
    c1, c2 = sat_contours
    x1, _, _, _ = cv2.boundingRect(c1)
    x2, _, _, _ = cv2.boundingRect(c2)
    if x1 < x2:
        panel = c1
        body = c2
    else:
        panel = c2
        body = c1

    return body, panel

for t,filepath in enumerate(img_generator()):
    print(t)
    if t%FRAMERATE != 0:
        continue

    if t<MIN_T:
        continue

    if t>=MAX_T:
        break

    color_img = cv2.imread(filepath, cv2.IMREAD_COLOR)

    img = cv2.cvtColor(color_img, cv2.COLOR_BGR2GRAY)

    template_h, template_w = template.shape

    template_match = cv2.matchTemplate(img, template, cv2.TM_CCOEFF)
    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(template_match)

    top_left = max_loc
    bottom_right = (max_loc[0]+template_w,max_loc[1]+template_h)
    next_template = img[top_left[1]:bottom_right[1],top_left[0]:bottom_right[0]]
    color_match = color_img[top_left[1]:bottom_right[1],top_left[0]:bottom_right[0]]

    w_sz = len(template_window)
    if w_sz == WINDOW_SIZE:
        template_window.pop(0)
    template_window.append(next_template)

    template = np.mean(np.array(template_window), axis=0).astype(np.uint8)
    
    _, template_mask = cv2.threshold(template, BLACK_NOISE_LEVEL, 255, cv2.THRESH_BINARY)

    # filter out stars
    nlabels, labels, stats, _ = cv2.connectedComponentsWithStats(template_mask, None, None, None, 8, cv2.CV_32S)
    areas = stats[1:,cv2.CC_STAT_AREA]
    filtered = np.zeros((labels.shape), np.uint8)
    for i in range(0, nlabels - 1):
        if areas[i] == max(areas):   #keep
            filtered[labels == i + 1] = 255

    shape = np.argwhere(filtered)
    left = min(x[1] for x in shape)
    right = max(x[1] for x in shape)+1
    top = min(x[0] for x in shape)
    bottom = max(x[0] for x in shape)+1

    template = template[top:bottom,left:right]
    template_window = [t[top:bottom,left:right] for t in template_window]
    template_matches.append((top_left,color_match[top:bottom,left:right]))

    cv2.imshow("Template", template)
    cv2.imshow("Filtered Template", filtered)

    # vid.write(cv2.copyMakeBorder(template,0,th-template.shape[0],0,tw-template.shape[1],cv2.BORDER_CONSTANT,value=0))
    # vid2.write(cv2.copyMakeBorder(next_template,0,th-next_template.shape[0],0,tw-next_template.shape[1],cv2.BORDER_CONSTANT,value=0))

    marked_img = copy.deepcopy(img)
    cv2.rectangle(marked_img, top_left, bottom_right, 255, 5)
    # vid3.write(marked_img)
    # cv2.imshow("Template Match", marked_img)

    if len(template_matches) > 1:
        template_match_t1 = cv2.cvtColor(template_matches[-2][1], cv2.COLOR_BGR2GRAY)
        template_match_t2 = cv2.cvtColor(template_matches[-1][1], cv2.COLOR_BGR2GRAY)
        # pad the second template to be the same size as the first
        template_match_h, template_match_w = template_match_t1.shape
        template_match_h2, template_match_w2 = template_match_t1.shape
        # template_match_t2 = cv2.copyMakeBorder(template_match_t2,0,template_match_h-(bottom-top),0,template_match_w-(right-left),cv2.BORDER_REFLECT_101)
        # print(template_match_t1.shape)
        # print(template_match_t2.shape)

        #### ORB
        # print(template_match_t2.shape)
        # ORB = cv2.ORB_create(fastThreshold = 5, edgeThreshold=5, patchSize=5)
        # kp1, des1 = ORB.detectAndCompute(template_match_t1,None)
        # kp2, des2 = ORB.detectAndCompute(template_match_t2,None)
        # if des1 is None or des2 is None:
        #     continue
        # bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
        # feature_matches = bf.match(des1, des2)
        # feature_matches = sorted(feature_matches, key = lambda x:x.distance)
        # matched_img = cv2.drawMatches(template_match_t1,kp1,template_match_t2,kp2,feature_matches,None,flags=cv2.DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS)


        #### SIFT init
        sift = cv2.SIFT_create(edgeThreshold=20, contrastThreshold=0.02, sigma=0.8)
        kp1, des1 = sift.detectAndCompute(template_match_t1,None)
        kp2, des2 = sift.detectAndCompute(template_match_t2,None)
        if des1 is None or des2 is None:
            continue
        if len(kp1) < 5 or len(kp2) < 5:
            print("breaking due to not enough features")
            continue


        #### cluster
        # pts = np.array([p.pt for p in matched_points], dtype=np.float32)
        # initial_labels = np.array([int(p[0] > 0.8*template_match_w) for p in pts], dtype=np.int32)
        # plt.scatter(pts[:,0],pts[:,1],(initial_labels+1)*100,marker='x')
        # plt.xlim(0,template_match_w)
        # plt.ylim(0,template_match_h)
        # cats, labels, centers = cv2.kmeans(
        #     pts,
        #     2,
        #     initial_labels,
        #     (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 10, 1.0),
        #     1,
        #     cv2.KMEANS_USE_INITIAL_LABELS
        # )
        # print(labels)
        # A = pts[labels.ravel()==0]
        # B = pts[labels.ravel()==1]
        # plt.scatter(A[:,0],A[:,1])
        # plt.scatter(B[:,0],B[:,1],c = 'r')
        # plt.show()

        #### watershed segmentation
        # # noise removal
        # kernel = np.ones((3,3),np.uint8)
        # ret, thresh = cv2.threshold(template_match_t2, BLACK_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
        # opening = cv2.morphologyEx(thresh,cv2.MORPH_OPEN,kernel, iterations = 2)
        # # sure background area
        # sure_bg = cv2.dilate(opening,kernel,iterations=3)
        # # Finding sure foreground area
        # dist_transform = cv2.distanceTransform(opening,cv2.DIST_L2,5)
        # ret, sure_fg = cv2.threshold(dist_transform,0.7*dist_transform.max(),255,0)
        # # Finding unknown region
        # sure_fg = np.uint8(sure_fg)
        # unknown = cv2.subtract(sure_bg,sure_fg)
        # # Marker labelling
        # ret, markers = cv2.connectedComponents(sure_fg)
        # # Add one to all labels so that sure background is not 0, but 1
        # markers = markers+1
        # # Now, mark the region of unknown with zero
        # markers[unknown==255] = 0
        # markers = cv2.watershed(template_matches[-1][1],markers)
        # template_matches[-1][1][markers == -1] = [255,0,0]

        # cv2.imshow("Watershed", template_matches[-1][1])

        #### segmentation using erosion
        body, panel = segment_image(template_match_t1)


    #     # #### SIFT match
    #     flann = cv2.FlannBasedMatcher(
    #         {"algorithm": 1, "trees": 5},
    #         {"checks": 500}
    #     )
    #     feature_matches = flann.knnMatch(des1,des2,k=2)
    #     filtered_matches = []
    #     # Need to draw only good template_matches, so create a mask
    #     matches_body_mask = [[0,0] for _ in range(len(feature_matches))]
    #     matches_panel_mask = [[0,0] for _ in range(len(feature_matches))]
    #     # ratio test as per Lowe's paper
    #     points_t1 = []
    #     points_t2 = []

    #     body_pts = []
    #     panel_pts = []

    #     segment_mask = np.zeros_like(template_match_t1)
    #     flow = np.zeros([template_match_t1.shape[0],template_match_t1.shape[1],2], dtype=np.float32)
    #     for i,(m,n) in enumerate(feature_matches):
    #         p1 = kp1[m.queryIdx]
    #         p2 = kp2[m.trainIdx]
    #         # move left a couple pixels to get rid of offset
    #         # pt = (max(p2.pt[0]-3,0),p2.pt[1])
    #         if m.distance < 0.7*n.distance and abs(p1.pt[1]-p2.pt[1]) < MAX_MATCH_DIST_Y  and abs(p1.pt[0]-p2.pt[0]) < MAX_MATCH_DIST_Y:
    #             panel_score = cv2.pointPolygonTest(panel, p1.pt, True)
    #             body_score = cv2.pointPolygonTest(body, p1.pt, True)
    #             points_t1.append([p1.pt[0]+prior_top_left[0],p1.pt[1]+prior_top_left[1]])
    #             points_t2.append([p2.pt[0]+top_left[0],p2.pt[1]+top_left[1]])
    #             flow[round(p1.pt[1]),round(p1.pt[0]),:] = np.array(p2.pt) - np.array(p1.pt) + np.array(top_left) - np.array(prior_top_left)
    #             if panel_score > body_score:
    #                 matches_panel_mask[i]=[1,0]
    #                 panel_pts.append((t,p1.pt[0]+prior_top_left[0],p1.pt[1]+prior_top_left[1],p2.pt[0]+top_left[0],p2.pt[1]+top_left[1],0))
    #                 segment_mask[round(p1.pt[1]),round(p1.pt[0])] = 2
    #             else:
    #                 matches_body_mask[i]=[1,0]
    #                 body_pts.append((t,p1.pt[0]+prior_top_left[0],p1.pt[1]+prior_top_left[1],p2.pt[0]+top_left[0],p2.pt[1]+top_left[1],0))
    #                 segment_mask[round(p1.pt[1]),round(p1.pt[0])] = 1

    #     # print(np.mean(flow[...,0]),np.mean(flow[...,1]))
    #     # with open(f"Data/sparse1/seg/{t-FRAMERATE:05}_({prior_top_left[0]},{prior_top_left[1]}).txt", "w") as f:
    #     #     np.savetxt(f, segment_mask, fmt='%d')

    #     # cv2.writeOpticalFlow(f"Data/sparse1/flow/{t-FRAMERATE:05}_({prior_top_left[0]},{prior_top_left[1]}).flo", flow)

    #     body_pts_ls.append(body_pts)
    #     panel_pts_ls.append(panel_pts)

    #     panel_matched_img = cv2.drawMatchesKnn(template_match_t1,kp1,template_match_t2,kp2,feature_matches,None,**dict(
    #                     matchesMask = matches_panel_mask,
    #                     flags = cv2.DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS))
    #     cv2.imshow("Feature Match (Panel)", panel_matched_img)
    #     body_matched_img = cv2.drawMatchesKnn(template_match_t1,kp1,template_match_t2,kp2,feature_matches,None,**dict(
    #                     matchesMask = matches_body_mask,
    #                     flags = cv2.DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS))
    #     matched_img = cv2.vconcat((body_matched_img,panel_matched_img))
    #     cv2.imshow("matched-features.png", matched_img)

    #     # for kp in body_pts:
    #     #     seg_base_img = cv2.circle(seg_base_img, (int(kp.pt[0]),int(kp.pt[1])), radius=1, color=(0, 0, 255), thickness=1)
    #     # for kp in panel_pts:
    #     #     seg_base_img = cv2.circle(seg_base_img, (int(kp.pt[0]),int(kp.pt[1])), radius=1, color=(255, 0, 0), thickness=1)
        
    #     # vid4.write(cv2.copyMakeBorder(matched_img,0,2*th-matched_img.shape[0],0,2*tw-matched_img.shape[1],cv2.BORDER_CONSTANT,value=0))

    #     # #### optical flow
    #     # # flow, status, err = cv2.calcOpticalFlowPyrLK(prior_img, img, np.array(points_t1, dtype=np.float32), np.array(points_t2, dtype=np.float32), flags=cv2.OPTFLOW_USE_INITIAL_FLOW)
    #     # # synthetic_dense_flow = np.zeros([IMG_Y, IMG_X, 2], dtype=np.float32)
    #     # # for i,point2 in enumerate(flow):
    #     # #     if status[i] == 1:
    #     # #         point1 = points_t1[i]
    #     # #         synthetic_dense_flow[round(point1[1]),round(point1[0]),0] = point2[0]-point1[0]
    #     # #         synthetic_dense_flow[round(point1[1]),round(point1[0]),1] = point2[1]-point1[1]

    #     # # only calculate flow in region of interest
    #     # roi_left = max(min(prior_top_left[0],top_left[0])-ROI_BUFFER,0)
    #     # roi_right = min(max(prior_top_left[0]+template_match_w,top_left[0]+template_match_w2)+ROI_BUFFER,IMG_X)
    #     # roi_top = max(min(prior_top_left[1],top_left[1])-ROI_BUFFER,0)
    #     # roi_bottom = min(max(prior_top_left[1]+template_match_h,top_left[1]+template_match_h2)+ROI_BUFFER,IMG_Y)
    #     # prior_roi = prior_img[roi_top:roi_bottom,roi_left:roi_right]
    #     # roi = img[roi_top:roi_bottom,roi_left:roi_right]
    #     # flow = cv2.calcOpticalFlowFarneback(prior_roi, roi, None, 0.5, 5, 5*FRAMERATE, 5, 5, 1.1, 0)

    #     # ret, thresh = cv2.threshold(prior_roi, BLACK_NOISE_LEVEL, 255, cv2.THRESH_BINARY)
    #     # contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    #     # contour = sorted(contours, key=lambda c: cv2.contourArea(c), reverse=True)[0]

    #     # body, panel = segment_image(prior_roi)

    #     # segment_mask = np.zeros_like(roi)
    #     # for y in range(flow.shape[0]):
    #     #     for x in range(flow.shape[1]):
    #     #         # alter flow to exclude everything outside the satellite
    #     #         if cv2.pointPolygonTest(contour, (x,y), False) < 0:
    #     #             flow[y,x,:] = 0
    #     #         else:
    #     #             # build segmented masks
    #     #             panel_score = cv2.pointPolygonTest(panel, (x,y), True)
    #     #             body_score = cv2.pointPolygonTest(body, (x,y), True)
    #     #             if panel_score > body_score:
    #     #                 segment_mask[y,x]=2
    #     #             else:
    #     #                 segment_mask[y,x]=1
    #     # print(np.mean(flow[...,0]),np.mean(flow[...,1]))

    #     # with open(f"Data/dense1/seg/{t-FRAMERATE:05}_({roi_left},{roi_top}).txt", "w") as f:
    #     #     np.savetxt(f, segment_mask, fmt='%d')

    #     # cv2.writeOpticalFlow(f"Data/dense1/flow/{t-FRAMERATE:05}_({roi_left},{roi_top}).flo", flow)
    #     # hsv = np.zeros([roi_bottom-roi_top,roi_right-roi_left,3], dtype=np.float32)
    #     # hsv[...,1] = 255
    #     # mag, ang = cv2.cartToPolar(flow[...,0], flow[...,1])
    #     # hsv[...,2] = ang*180/np.pi/2
    #     # hsv[...,0] = cv2.normalize(segment_mask, None, 0, 255, cv2.NORM_MINMAX)
    #     # bgr = cv2.cvtColor(hsv, cv2.COLOR_HSV2BGR)
    #     # cv2.imshow('prior_roi', prior_roi)
    #     # cv2.imshow('roi', roi)
    #     # cv2.imshow('optical flow', bgr)

    #     # black_img = np.zeros_like(color_img)
    #     # black_img[roi_top:roi_bottom,roi_left:roi_right] = bgr
    #     # vid5.write(black_img)

    # prior_top_left = top_left
    # prior_img = img

    # key = cv2.waitKey(1)
        
    # if key == ord("q"):
    #     break

# vid.release()
vid2.release()
# vid3.release()
# vid4.release()
# vid5.release()
