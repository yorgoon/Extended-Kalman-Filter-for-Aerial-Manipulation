# Dynamic Modeling and State Estimation for Aerial Manipulation
This is a final project from the course EN530.603.F2018 Applied Optimal Control at Johns Hopkins University. For more information, please visit the course [website](https://asco.lcsr.jhu.edu/en530-603-f2018-applied-optimal-control/).

This repository contains MATLAB code that simulates Extended Kalman Filter (EKF) for a 2-DOF aerial manipulator attached to the UAV. 

**Main Contributors**: Soowon Kim, and Neil McCarter
**Affiliation**: Johns Hopkins University

## How To
Please run the main script sequentially in ``mainsim.m``

## Trajectory planner
The given scenario consists of two spherical obstacles. The planner will generate an optimized polynomial trajectory (9th order) by minimizing snap term (4th derivative). The class ``MinimumSnapTrajectory`` is called iteratively until the location of the way points and the time intervals for each segment are optimized.

## Without EKF
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/cXVSs3OqWYQ/0.jpg)](https://www.youtube.com/watch?v=cXVSs3OqWYQ)

## With EKF
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/Y8Qhyiw4ImA/0.jpg)](https://www.youtube.com/watch?v=Y8Qhyiw4ImA)

## Final Presentation & Report
[slides](https://drive.google.com/open?id=1Roen3hFWKzjwpFi7RKR9-zxp94Zd9ZHn), [report](https://drive.google.com/open?id=1kGVsTq9I9r1VLvYIv23_wkJyh48ZD-Qx)

## Related Articles
Murray, Richard M., et al. A Mathematical Introduction to Robotic Manipulation. CRC, 1994.
https://www.cds.caltech.edu/~murray/books/MLS/pdf/mls94-complete.pdf

Lippiello, Vincenzo, and Fabio Ruggiero. “Cartesian Impedance Control of a UAV with a Robotic Arm.” IFAC Proceedings Volumes, vol. 45, no. 22, 2012, pp. 704–709.
https://www.sciencedirect.com/science/article/pii/S1474667016336928

Mellinger, Daniel, and Vijay Kumar. “Minimum Snap Trajectory Generation and Control for Quadrotors.” 2011 IEEE International Conference on Robotics and Automation, 2011
https://ieeexplore.ieee.org/abstract/document/5980409

Richter, Charles, et al. “Polynomial Trajectory Planning for Aggressive Quadrotor Flight in Dense Indoor Environments.” Springer Tracts in Advanced Robotics Robotics Research, 2016, pp. 649–666
https://link.springer.com/chapter/10.1007/978-3-319-28872-7_37

Lee, Taeyoung, et al. “Geometric Tracking Control of a Quadrotor UAV on SE(3).” 49th IEEE Conference on Decision and Control (CDC), 2010
https://ieeexplore.ieee.org/abstract/document/5717652

Kim, Suseong, et al. “Aerial Manipulation Using a Quadrotor with a Two DOF Robotic Arm.” 2013 IEEE/RSJ International Conference on Intelligent Robots and Systems, 2013
https://ieeexplore.ieee.org/document/6697077

Kobilarov, Marin. Applied Optimal Control Lecture Notes.
https://asco.lcsr.jhu.edu/en530-603-f2018-applied-optimal-control/
