import numpy as np
from scipy.spatial.transform import Rotation

TELEM_FOLDER = "Data/telem"
BODY_ID, PANEL_ID = 1, 2

CAM_X = np.array([0,1,0])
CAM_Y = np.array([0,0,1])
CAM_Z = np.array([1,0,0])

HOST_TO_CAM = np.array([CAM_X,CAM_Y,CAM_Z])

with open(TELEM_FOLDER+'/qn03.42','r') as f:
    host_attitudes = np.array([Rotation.from_quat([float(n) for n in l.split(' ')[:-1]]) for l in f.readlines() if not l.isspace()]) # quaternions, ECI to body

with open(TELEM_FOLDER+'/qn12.42','r') as f:
    sat_attitudes = np.array([Rotation.from_quat([float(n) for n in l.split(' ')[:-1]]) for l in f.readlines() if not l.isspace()]) # quaternions, ECI to body

with open(TELEM_FOLDER+'/qn12_2.42','r') as f:
    sat_panel_attitudes = np.array([Rotation.from_quat([float(n) for n in l.split(' ')[:-1]]) for l in f.readlines() if not l.isspace()]) # quaternions, ECI to body

with open(TELEM_FOLDER+'/pn03.42','r') as f:
    cam_positions = np.array([[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()])

with open(TELEM_FOLDER+'/pn12.42','r') as f:
    sat_positions = np.array([[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()])

with open(TELEM_FOLDER+'/pn12_2.42','r') as f:
    # input is relative to body so add to main
    sat_panel_positions = np.array([[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()]) + sat_positions

tvec = list(range(len(host_attitudes)))

X, L, M = [], [], []
for t in tvec:
    R_host = host_attitudes[t].as_matrix()
    t_host = cam_positions[t]
    R_sat = sat_attitudes[t].as_matrix()
    t_sat = sat_positions[t]

    X.append(np.zeros([4,4]))
    X[-1][0:3,0:3] = R_host
    X[-1][0:3,3] = t_host
    X[-1][3,3] = 1

    L.append(np.zeros([4,4]))
    L[-1][0:3,0:3] = R_sat
    L[-1][0:3,3] = t_sat
    L[-1][3,3] = 1

    M.append(np.matmul(np.linalg.inv(X[-1]),L[-1]))
    
T, H = [], []
for t in tvec[1:]:
    T.append(np.matmul(np.linalg.inv(X[t-1]),X[t]))
    H.append(np.matmul(np.linalg.inv(L[t-1]),L[t]))
