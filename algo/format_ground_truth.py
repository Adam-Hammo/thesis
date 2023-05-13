import numpy as np
from scipy.spatial.transform import Rotation
import math

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

# camera: t R11 R12 R13 t1 R21 R22 R23 t2 R31 R32 R33 t3 0 0 0 1
cam_attitudes = [(Rotation.from_matrix(HOST_TO_CAM)*a).as_matrix() for a in host_attitudes]
with open(TELEM_FOLDER+'/camera_groundtruth.txt', 'w') as f:
    for t in range(len(cam_positions)):
        a = cam_attitudes[t]
        p = cam_positions[t]
        f.write(f"{t} {a[0,0]} {a[0,1]} {a[0,2]} {p[0]} {a[1,0]} {a[1,1]} {a[1,2]} {p[1]} {a[2,0]} {a[2,1]} {a[2,2]} {p[2]} 0 0 0 1\n")
    

# satellite: t 0 B1 B2 B3 B4 R11 R12 R13 t1 R21 R22 R23 t2 R31 R32 R33 t3 , relative to camera

print(Rotation.from_matrix(HOST_TO_CAM).as_matrix())