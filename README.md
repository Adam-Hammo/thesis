# Computer Vision Techniques for Close-Proximity Pose Estimation of Satellites

This codebase is a bit of a mess - I may come back and clean it up someday. A rough directory:
```
-> 42Simulator - a fork of https://github.com/ericstoneking/42, some small changes to output telemetry and overcome monitor limitations
-> algo - the guts of the projet
  -> star-tracker.py - star tracking algorithm
  -> feature-matcher.py - feature detection and matching algorithm
  -> pose_optimisation.m - pose optimisation
  -> Data->*.zip - imagery collected from the simulator
  -> Data->telem - satellite telemetry
  -> Data->[dense/sparse] - feature matches and segmentation from processed imagery
```
  
### Telemetry files Data->telem

CN03.42: camera rotation matrices. 

pn03.42: camera position. 

qn03.42: camera body rotation, quaternions. 

pn12.42: satellite position.

qn12.42: satellite body rotation, quaternions.

pn12_2.42: satellite solar panel position, relative to pn12.42.

qn12_2.42: satellite solar panel rotation, quaternions.
