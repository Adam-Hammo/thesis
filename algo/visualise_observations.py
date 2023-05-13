import csv
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d
import numpy as np
# with open("Data/saved-observations.csv", 'r') as f:
#     rdr = csv.reader(f)
#     skip = True
#     data = []
#     for r in rdr:
#         if skip:
#             skip = False
#             continue
#         data.append([int(x) for x in r])

# data = [d for d in data if d[1] == 2]

# time = [d[0] for d in data]
# left = [d[2] for d in data]
# top = [d[3] for d in data]
# width = [d[4] for d in data]
# height = [d[5] for d in data]
# x = [d[2]+d[4]/2 for d in data]
# y = [d[3]+d[5]/2 for d in data]

# figure = plt.figure(4)
# plt.scatter(x,y,c=time,cmap="RdYlGn")
# c=plt.colorbar()
# c.set_label("Time (s)")
# plt.xlim(0,1679)
# plt.ylim(0,995)
# plt.gca().invert_yaxis()
# plt.xlabel("X pixel")
# plt.ylabel("Y pixel")

# plt.show()

# with open("Data/telem/qn03.42",'r') as f:
#     data = [[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()]

# plt.plot(data)
# plt.legend(["q0","q1","q2","q3"])
# plt.xlabel("Time (s)")
# plt.ylabel("Quaternion value")
# plt.savefig("../latex/figures/cam_attitude.png")

with open("Data/telem/pn03.42", "r") as f:
    campos = [[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()]
    
with open("Data/telem/pn12.42", "r") as f:
    targetpos = [[float(x) for x in l.strip().split(' ') if x != ''] for l in f.readlines()]
    
# ax = plt.axes(projection='3d')
# plt.plot(
#     [c[0] for c in campos],
#     [c[1] for c in campos],
#     [c[2] for c in campos]
# )
# plt.xlabel("x (m)")
# plt.ylabel("y (m)")
# ax.set_zlabel("z (m)")

# plt.savefig("../latex/figures/orbit.png")
# # plt.plot(targetpos)
# plt.show()

diff = [[t_i-c_i for c_i,t_i in zip(c,t)] for c,t in zip(campos, targetpos)]
# plt.plot(diff)
# plt.xlabel("Time (s)")
# plt.ylabel("Distance (m)")
# plt.legend(["x","y","z"])
# plt.savefig("../latex/figures/delta_x.png")

ax = plt.axes(projection='3d')
plt.plot(
    [c[0] for c in diff],
    [c[1] for c in diff],
    [c[2] for c in diff]
)
plt.xlabel("x (m)")
plt.ylabel("y (m)")
ax.set_zlabel("z (m)")

plt.savefig("../latex/figures/delta_x_3d.png")
# plt.plot(targetpos)
plt.show()