clear
close all
clc

L_N_2 = [-6.1351   -3.5409    0.0074   -0.0005    0.0009    0.0074]';

warning('off','MATLAB:handle_graphics:exceptions:SceneNode')

pyenv("Version","/Library/Frameworks/Python.framework/Versions/3.9/bin/python3");

import clib.opencv.*;
import vision.opencv.util.*;

set(groot,'defaultfigureposition',[100 75 1100 450]);
set(0,'defaulttextinterpreter','latex')
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');

% define some general plot parameters
alw             = 1;                        % AxesLineWidth
fsz             = 18;                       % Fontsize
lw              = 2.5;                        % LineWidth
msz             = 10;                       % MarkerSize

set(0,'defaultAxesFontSize',fsz)
set(0,'defaultTextFontSize',fsz)
set(0,'defaultLegendFontSize',fsz)

set(0,'defaultLineLineWidth',lw);           % set the default line width to lw
set(0,'defaultLineMarkerSize',msz);         % set the default line marker size to msz
% define colours
myred           = [216 30 49]/255;
myblue          = [27 99 157]/255;
myblack         = [0 0 0]/255;
mygreen         = [0 128 0]/255;
mycyan          = [2 169 226]/255;
myyellow        = [251 194 13]/255;
mygray          = [89 89 89]/255;
set(0,'defaultfigurecolor',[1 1 1])
set(groot,'defaultAxesColorOrder',[myblack;myblue;myred;mygreen;myyellow;mycyan;mygray]);

%% configuration
USE_CACHED_OPTICAL_FLOW = true;
INCLUDE_NOISE = true;
FLOW_TYPE = "sparse";
ROTATION_NOISE = deg2rad(1); % rad
TRANSLATION_NOISE = 20;        % m
MIN_POINTS = 5;
SEGMENT = 1;
CAM_KEY_OFFSET = 10000;
SAT_KEY_OFFSET = 20000;
INV_FRAMERATE = 1;

START_T = 1000-788;
T_VEC = 1:INV_FRAMERATE:1000;
PLOT_T_VEC = 1:INV_FRAMERATE:1000-START_T+1;
MAX_T = 1000;
NT = length(T_VEC)+1;
I_VEC = START_T:1000/INV_FRAMERATE;
OPTIMISATION_WINDOW = 100;
OPTIMISATION_DIRECTION = "backward"; % forward/backward
APPLY_RANSAC = false;

PI = [
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, 0
];

% make random result reproducible for now
rng("default")

% host body to camera rotation
% HOST_BODY_TO_CAMERA = [
%     0, 1, 0;
%     0, 0, 1;
%     1, 0, 0;
% ];
% HOST_BODY_TO_CAMERA = [
%     -1, 0, 0;
%     0, -1, 0;
%     0, 0, -1;
% ];

% HOST_BODY_TO_CAMERA = eye(3);

% camera configuration
IMG_X = 7680;
IMG_Y = 4320;
IMG_X_C = IMG_X/2;
IMG_Y_C = IMG_Y/2;
FOV_Y_ANGLE = deg2rad(30);
FOV_X_ANGLE = FOV_Y_ANGLE*IMG_X/IMG_Y;
FOCAL_LENGTH_X = IMG_X_C / tan(FOV_X_ANGLE/2);
FOCAL_LENGTH_Y = IMG_Y_C / tan(FOV_Y_ANGLE/2);
CAM = cameraIntrinsics([FOCAL_LENGTH_X,FOCAL_LENGTH_Y],[IMG_X_C,IMG_Y_C],[IMG_X,IMG_Y]);

% environmental constnts
MU = 3.98604e14; % standard gravitational parameter

% other stuff
VID = VideoWriter("relative_pose", "MPEG-4");
VID.FrameRate = 20;
open(VID);

%% load data
disp("Loading data...")
% load telemetry
true_host_body_attitudes = reshape(load("Data/telem/CN03.42")',[3,3,1001]);
true_sat_attitudes = quat2rotm(circshift(load("Data/telem/qn12.42"),1,2));
true_sat_panel_attitudes = quat2rotm(circshift(load("Data/telem/qn12_2.42"),1,2));
true_host_positions = load("Data/telem/pn03.42")';
true_sat_positions = load("Data/telem/pn12.42")';
true_sat_panel_positions = load("Data/telem/pn12_2.42")';

true_host_body_attitudes = flip(squeeze(true_host_body_attitudes(:,:,T_VEC)),3);
true_sat_attitudes = flip(squeeze(true_sat_attitudes(:,:,T_VEC)),3);
true_sat_panel_attitudes = flip(squeeze(true_sat_panel_attitudes(:,:,T_VEC)),3);
true_host_positions = flip(squeeze(true_host_positions(:,T_VEC)),2);
true_sat_positions = flip(squeeze(true_sat_positions(:,T_VEC)),2);
true_sat_panel_positions = flip(squeeze(true_sat_panel_positions(:,T_VEC)),2);



% add noise to telemetry
if INCLUDE_NOISE
    measured_host_body_attitudes = permute_rotmat(true_host_body_attitudes, ROTATION_NOISE);
    measured_sat_attitudes = permute_rotmat(true_sat_attitudes, ROTATION_NOISE);
    measured_sat_panel_attitudes = permute_rotmat(true_sat_panel_attitudes, ROTATION_NOISE);
    measured_host_positions = (true_host_positions + normrnd(0,TRANSLATION_NOISE,size(true_host_positions)));
    measured_sat_positions = (true_sat_positions + normrnd(0,TRANSLATION_NOISE,size(true_sat_positions)));
    measured_sat_panel_positions = (true_sat_panel_positions + normrnd(0,TRANSLATION_NOISE,size(true_sat_panel_positions)));
else
    measured_host_body_attitudes = true_host_body_attitudes;
    measured_sat_attitudes = true_sat_attitudes;
    measured_sat_panel_attitudes = true_sat_panel_attitudes;
    measured_host_positions = true_host_positions;
    measured_sat_positions = true_sat_positions;
    measured_sat_panel_positions = true_sat_panel_positions;
end

% rotate body pose to camera pose
true_host_cam_attitudes = -true_host_body_attitudes;
measured_host_cam_attitudes = -measured_host_body_attitudes;

% load optical flow
if USE_CACHED_OPTICAL_FLOW
    load("Data/cache/optical_flow_rev_"+FLOW_TYPE+num2str(INV_FRAMERATE)+".mat","optical_flow");
else
    filenames = dir("Data/rev"+FLOW_TYPE+num2str(INV_FRAMERATE)+"/flow/*.flo");
    optical_flow(NT) = struct();
    for i = 1:length(filenames)
        filename = extractBefore(filenames(i).name,".flo");
        ssplit = split(filename,"_");
        t = str2num(cell2mat(ssplit(1)))/INV_FRAMERATE;
        ssplit = split(strrep(strrep(cell2mat(ssplit(2)),"(",""),")",""),",");
        x0 = str2num(cell2mat(ssplit(1)));
        y0 = str2num(cell2mat(ssplit(2)));
    
        flow = getImage(cv.readOpticalFlow(strcat("Data/rev"+FLOW_TYPE+num2str(INV_FRAMERATE)+"/flow/",filename,".flo")));
        segments = load(strcat("Data/rev"+FLOW_TYPE+num2str(INV_FRAMERATE)+"/seg/",filename,".txt"));
        
        % find non-zero flow - these are our points
        [pt_x, pt_y, pt_z] = ind2sub(size(flow(:,:,1)),find(flow));
        
        % find unique points with non-zero flow on each layer
        pts = [pt_x, pt_y];
        pts = unique(pts,"rows");
    
        pts_3d = [pts ones(size(pts(:,1))); pts ones(size(pts(:,1)))*2];
    
        optical_flow(t).p = [x0+pts(:,1)'; y0+pts(:,2)'];
        optical_flow(t).phi = reshape(flow(sub2ind(size(flow),pts_3d(:,1),pts_3d(:,2),pts_3d(:,3))), size(pts))';
        optical_flow(t).seg = segments(sub2ind(size(segments),pts(:,1),pts(:,2)));
    
    end
    save("Data/cache/optical_flow_rev_"+FLOW_TYPE+num2str(INV_FRAMERATE)+".mat","optical_flow")
end

optical_flow = flip(optical_flow);

%% convert to SE(3)
% create SE(3) states
X_N = se3(measured_host_cam_attitudes,measured_host_positions');

X_N_true = se3(true_host_cam_attitudes,true_host_positions');

L_N = zeros(4,4,NT);
L_N_true = zeros(4,4,NT);
if SEGMENT == 1
    L_N = se3(measured_sat_attitudes,measured_sat_positions');
    L_N_true = se3(true_sat_attitudes,true_sat_positions');
elseif SEGMENT == 2
    L_N = se3(measured_sat_panel_attitudes,measured_sat_panel_positions');
    L_N_true = se3(true_sat_panel_attitudes,true_sat_panel_positions');
end

M_X = se3(zeros(4,4,NT));
M_X_true = se3(zeros(4,4,NT));
T_X = se3(zeros(4,4,NT));
T_N = se3(zeros(4,4,NT));
H_L = se3(zeros(4,4,NT));
H_N = se3(zeros(4,4,NT));
H_X = se3(zeros(4,4,NT));
T_X_true = se3(zeros(4,4,NT));
T_N_true = se3(zeros(4,4,NT));
H_L_true = se3(zeros(4,4,NT));
H_N_true = se3(zeros(4,4,NT));
H_X_true = se3(zeros(4,4,NT));
for t = 1:1000
    M_X(t) = X_N(t)\L_N(t);
    M_X_true(t) = X_N_true(t)\L_N_true(t);
    if t > 1
        T_X(t-1) = X_N(t-1)\X_N(t);
        T_N(t-1) = X_N(t-1)*T_X(t-1)/X_N(t-1);
        H_L(t-1) = L_N(t-1)\L_N(t);
        H_N(t-1) = L_N(t-1)*H_L(t-1)/L_N(t-1);
        H_X(t-1) = X_N(t-1)\H_N(t-1)*X_N(t-1);
        T_X_true(t-1) = X_N_true(t-1)\X_N_true(t);
        T_N_true(t-1) = X_N_true(t-1)*T_X_true(t-1)/X_N_true(t-1);
        H_L_true(t-1) = L_N_true(t-1)\L_N_true(t);
        H_N_true(t-1) = L_N_true(t-1)*H_L_true(t-1)/L_N_true(t-1);
        H_X_true(t-1) = X_N_true(t-1)\H_N_true(t-1)*X_N_true(t-1);
    end
end

%% reprojection error - moving frame (0 = X_N(t-1))
disp("Optimising reprojection error...")

H_X_est = se3(nan(4,4,NT));
H_N_est = se3(nan(4,4,NT));
L_N_est = se3(nan(4,4,NT));
L_X_est = se3(nan(4,4,NT));
H_X_est(1:START_T+5) = H_X(1:START_T+5);
H_N_est(1:START_T+5) = H_N(1:START_T+5);
L_N_est(1:START_T+5) = L_N(1:START_T+5);
L_X_est(1:START_T+5) = M_X(1:START_T+5);
first_t = NaN;
for t = I_VEC+1
    % filter for satellite body only
    p_t_1 = optical_flow(t-1).p(:,optical_flow(t-1).seg==SEGMENT);
    if length(p_t_1) < MIN_POINTS
        % can't make a prediction - use an old ting
        if t > 2
            H_X_est(t-1) = H_X_est(t-2);
        end
        H_N_est(t-1) = X_N(t-1)*H_X_est(t-1)/X_N(t-1);
        L_N_est(t) = H_N_est(t-1)*L_N_est(t-1);
        L_X_est(t) = H_X_est(t-1)*L_X_est(t-1);
        continue
    end
    if isnan(first_t)
        first_t = t;
    end
    p_t = p_t_1 + optical_flow(t-1).phi(:,optical_flow(t-1).seg==SEGMENT);

    % convert to SE(2)
    p_t_1_SE2 = [p_t_1; ones(1,length(p_t_1))];
    p_t_SE2 = [p_t; ones(1,length(p_t))];

    % convert to SE(3)
    m_0_t_1 = [CAM.K^(-1)*p_t_1_SE2; ones(1,length(p_t_1))];
    
    % add depth model
    L_0_true_t_1 = M_X_true(t-1);
    L_0_true_t = L_0_true_t_1*H_L_true(t-1);
    sat_plane_norm = L_0_true_t_1.rotm^(-1)*[0;0;-1];
    sat_plane_origin = L_0_true_t_1.trvec';
    cam_vector_origin = zeros(3,1);
    cam_vector_dir = m_0_t_1(1:3,:)./vecnorm(m_0_t_1(1:3,:));
    for n = 1:length(p_t_1)
        p0 = cam_vector_origin + cam_vector_dir(:,n)*norm(L_0_true_t_1.trvec)*0.9;
        p1 = cam_vector_origin + cam_vector_dir(:,n)*norm(L_0_true_t_1.trvec)*1.1;
        [p,~] = plane_line_intersect(sat_plane_norm,sat_plane_origin,p0,p1);
        m_0_t_1(:,n) = [p; 1];
    end
    
    % change reference frame
    ZERO_N = X_N(t-1);
    X_0_t = T_X(t-1);

    if t == 2
        G_guess = se3(nan(4,4));
    else
        G_guess = X_0_t\H_X_est(t-2);
    end
    py_object_points = py.list(reshape(m_0_t_1(1:3,:),[],1));
    py_img_points = py.list(reshape(p_t,[],1));
    py_R = py.list(rotmat2vec3d(G_guess.rotm));
    py_T = py.list(G_guess.trvec);
    [R, T] = pyrunfile("pnp.py",["R","T"],p3_t=py_object_points,p2_t=py_img_points,R=py_R,T=py_T);
    R = double(R);
    T = double(T);

    if size(T,1)==3
        T = T';
    end

    G = se3(rotvec2mat3d(R),T);
    H_0_est = X_0_t*G;
    H_X_est(t-1) = H_0_est;
    H_N_est(t-1) = ZERO_N*H_0_est/ZERO_N;
    L_N_est(t) = H_N_est(t-1)*L_N_est(t-1);
    L_X_est(t) = H_0_est*L_X_est(t-1);
%     H_X_true(t-1)
%     H_0_est
%     L_N_true(t)
%     L_N_est(t)
    
%     if t-1 > 788 || t < 4
%         continue
%     end
%     fig = figure(visible="off");
%     hold on
%     cpose = rigidtform3d(quat2rotm(rotm2quat(-X_N_true(t-1).rotm*[-1,0,0;0,1,0;0,0,-1])),X_N_true(t-1).trvec);
%     plotCamera(AbsolutePose=cpose,Size=20);
%     plotTransforms(L_N_true(t-1),'FrameSize',100);
%     axis off
%     set(gca,'color','black')
%     img = frame2im(getframe(fig));
%     writeVideo(VID,img);
%     break
%     scatter3(m_0_t_1(1,:),m_0_t_1(2,:),m_0_t_1(3,:),'x')
% 
%     cpose = rigidtform3d(quat2rotm(rotm2quat(X_0_t.rotm)),X_0_t.trvec);
%     plotCamera(AbsolutePose=cpose,Size=100);
%     plotTransforms([X_0_t,L_0_t_est],'FrameSize',400);
%     scatter3(m_0_t(1,:),m_0_t(2,:),m_0_t(3,:),'x')

%     break
end
% daso
close(VID)

%% filter - fit measurements to orbital dynamics
disp("Refining orbital model...")

L_N_opt = L_N_est(1:MAX_T);
L_N_opt_ransac = L_N_est(1:MAX_T);
opt_tvec = first_t:INV_FRAMERATE:MAX_T;
for t = opt_tvec
% for root_t = first_t+5
%     OPTIMISATION_WINDOW = 20;

%     disp("Processing time " + t)
    ctr = t-first_t;
    if mod(100*ctr/length(opt_tvec),10) < mod(100*(ctr-1)/length(opt_tvec),10)
       disp("NLLS " + round(100*ctr/length(opt_tvec)) + "% done");
    end

    % use herrick-gibbs to get an initial estimate
    t_1 = t-1;
    t_2 = t;
    t_3 = t+1;
    r_1 = L_N_est(t_1).trvec;
    r_2 = L_N_est(t_2).trvec;
    r_3 = L_N_est(t_3).trvec;
    tau_23 = t_3-t_2;
    tau_12 = t_2-t_1;
    tau_13 = t_3-t_1;
    g_1 = tau_23/tau_12/tau_13;
    g_3 = tau_12/tau_23/tau_13;
    g_2 = g_1 - g_3;
    h_1 = MU*tau_23/12;
    h_3 = MU*tau_12/12;
    h_2 = h_1 - h_3;
    d_1 = g_1 + h_1/norm(r_1)^3;
    d_2 = g_2 + h_2/norm(r_2)^3;
    d_3 = g_3 + h_3/norm(r_3)^3;
    
    rdot_2 = -d_1*r_1 + d_2*r_2 + d_3*r_3;
    
    % set up for NLLS
    if OPTIMISATION_DIRECTION == "forward"
        nlls_t = t:INV_FRAMERATE:min(t+OPTIMISATION_WINDOW,MAX_T);
    else
        nlls_t = t:-INV_FRAMERATE:max(first_t,t-OPTIMISATION_WINDOW);
    end
    
    x_guess = [r_2, rdot_2]'; % [x y z u v w]

    % build measurements into matrix
    measurements = [nlls_t'-t L_N_est(nlls_t).trvec];

    x = refine_position(x_guess, measurements);
    L_N_opt(t) = se3(L_N_est(t).rotm,x(1:3)');

    if t > 232 && APPLY_RANSAC
        % proxy some sort of max distance
        y = estimate_distances(x, measurements);
        initial_error = max(y);

        fit_function = @(points) refine_position(x_guess, points);
        cost_function = @(model, points) estimate_distances(model, points);
        
        nsamples = 10;
        [x, ~] = ransac(measurements, fit_function, cost_function, nsamples, initial_error, Confidence=99, MaxNumTrials=2000);
    end
    
    L_N_opt_ransac(t) = se3(L_N_est(t).rotm,x(1:3)');
end
disp("NLLS 100% done")

%% calc error
R_L_a_err = nan(3,NT-1);
R_L_err = nan(1,NT-1);
R_H_err = nan(1,NT-1);
T_H_err = nan(1,NT-1);
T_L_err = nan(1,NT-1);
T_L_opt_err = nan(1,NT-1);
T_L_opt_ransac_err = nan(1,NT-1);
for t = I_VEC
    if t > MAX_T/INV_FRAMERATE
        break
    end
    R_L_err(t) = dist(L_N_est(t),L_N_true(t),[0,1]);
    R_H_err(t) = dist(H_X_est(t),H_X_true(t),[0,1]);
    T_L_err(t) = dist(L_N_est(t),L_N_true(t),[1,0]);
    T_H_err(t) = dist(H_X_est(t),H_X_true(t),[1,0]);
    T_L_opt_err(t) = dist(L_N_opt(t),L_N_true(t),[1,0]);
    if APPLY_RANSAC
        T_L_opt_ransac_err(t) = dist(L_N_opt_ransac(t),L_N_true(t),[1,0]);
    end

    for a = 1:3
        v = [0;0;0];
        v(a) = 1;
        R_L_a_true = L_N_true(t).rotm*v;
        R_L_a_est = L_N_est(t).rotm*v;
        R_L_a_err_mat = rotation_between_vectors(R_L_a_est, R_L_a_true);
        R_L_a_err(a,t) = acos((trace(R_L_a_err_mat)-1)/2);
    end
end

%% plotting

figure
hold on
% plot(T_VEC,H_X(I_VEC).trvec)
plot(PLOT_T_VEC,H_X_est(I_VEC+1).trvec)
plot(PLOT_T_VEC,H_X_true(I_VEC).trvec)
legend("Noisy X","Noisy Y","Noisy Z","Optimised X","Optimised Y","Optimised Z","True X","True Y","True Z")

figure
hold on
% plot(T_VEC,L_N(I_VEC).trvec)
plot(PLOT_T_VEC,L_N_est(I_VEC).trvec)
plot(PLOT_T_VEC,L_N_true(I_VEC).trvec)
legend("Noisy X","Noisy Y","Noisy Z","Optimised X","Optimised Y","Optimised Z","True X","True Y","True Z")

figure
hold on
plot(PLOT_T_VEC,T_L_err(I_VEC));
plot(PLOT_T_VEC,T_L_opt_err(I_VEC));
plot(PLOT_T_VEC,T_L_opt_ransac_err(I_VEC));
xlabel("Time (s)");
ylabel("Error (m)")
legend("Reprojected Error", "Optimised Error", "Optimised Error with RANSAC")

figure
hold on
plot(PLOT_T_VEC,R_L_err(I_VEC));
legend("Reproj", "GTSAM")

%% functions
function B = permute_rotmat(A, standard_deviation)
    n = size(A, 3);
    theta = 2*pi*rand(1,n);
    phi = asin(2*rand(1,n)-1);
    [u_x,u_y,u_z] = sph2cart(theta,phi,1);
    a = normrnd(0,standard_deviation,1,n);
    q = quaternion(cos(a/2),sin(a/2).*u_x,sin(a/2).*u_y,sin(a/2).*u_z);
    B = pagemtimes(quat2rotm(q),A);
end

function R = rotation_between_vectors(a,b)
    u = a/norm(a);                      % a and b must be column vectors
    v = b/norm(b);                      % of equal length
    N = length(u);
    S = reflection( eye(N), v+u );      % S*u = -v, S*v = -u 
    R = reflection( S, v );             % v = R*u
end

function err = error_between_rotations(A,B)
    err = acos((trace(A*B')-1)/2);
end

function v = reflection( u, n )    
    % Reflection of u on hyperplane n.
    % u can be a matrix. u and v must have the same number of rows.
    
    v = u - 2 * n * (n'*u) / (n'*n);
end

function [I,check]=plane_line_intersect(n,V0,P0,P1)
    %plane_line_intersect computes the intersection of a plane and a segment(or
    %a straight line)
    % Inputs: 
    %       n: normal vector of the Plane 
    %       V0: any point that belongs to the Plane 
    %       P0: end point 1 of the segment P0P1
    %       P1:  end point 2 of the segment P0P1
    %
    %Outputs:
    %      I    is the point of interection 
    %     Check is an indicator:
    %      0 => disjoint (no intersection)
    %      1 => the plane intersects P0P1 in the unique point I
    %      2 => the segment lies in the plane
    %      3=>the intersection lies outside the segment P0P1
    %
    % Example:
    % Determine the intersection of following the plane x+y+z+3=0 with the segment P0P1:
    % The plane is represented by the normal vector n=[1 1 1]
    % and an arbitrary point that lies on the plane, ex: V0=[1 1 -5]
    % The segment is represented by the following two points
    % P0=[-5 1 -1]
    %P1=[1 2 3]   
    % [I,check]=plane_line_intersect([1 1 1],[1 1 -5],[-5 1 -1],[1 2 3]);
    %This function is written by :
    %                             Nassim Khaled
    %                             Wayne State University
    %                             Research Assistant and Phd candidate
    %If you have any comments or face any problems, please feel free to leave
    %your comments and i will try to reply to you as fast as possible.
    I=[0 0 0];
    u = P1-P0;
    w = P0 - V0;
    D = dot(n,u);
    N = -dot(n,w);
    if abs(D) < 10^-7        % The segment is parallel to plane
            if N == 0           % The segment lies in plane
                check=2;
                return
            else
                check=0;       %no intersection
                return
            end
    end
    %compute the intersection parameter
    sI = N / D;
    I = P0+ sI.*u;
    if (sI < 0 || sI > 1)
        check= 3;          %The intersection point  lies outside the segment, so there is no intersection
    else
        check=1;
    end
end

function x = refine_position(x, measurements)
    n = size(measurements,1);
    delta_x = Inf;
    H = zeros(3*n,6);
    delta_y = zeros(3*n,1);
    epsilon = 1e-6;
    iteration = 1;
    max_iterations = 10000;
    while norm(delta_x) > epsilon
    
        if iteration >= max_iterations
            disp('Failed to converge')
            break
        end
    
        for ix = 1:n
            t = measurements(ix,1);
            % retrieve expected observation
            [expected_pos, expected_vel] = universal_conic_section_orbit(t, x(1:3), x(4:6));
    
            % build jacobian
            dxdx_0 = universal_conic_section_jacobian(expected_pos, expected_vel, x(1:3), x(4:6), t);
            dhdx = [eye(3), zeros(3)];
    
            % retrieve actual observation
            H((3*ix-2):3*ix,:) = dhdx*dxdx_0;
    
            % build residual vector
            measured_pos = measurements(ix,2:4)';
            delta_y((3*ix-2):3*ix,1) = (measured_pos - expected_pos);
        end
    
        delta_x = (H'*H)\H'*delta_y;
    
%         disp("Iteration " + iteration + ": δx=" + norm(delta_x) + ", δy=" + norm(delta_y))
        
        x = x + delta_x;

        iteration = iteration + 1;
    
        if mod(iteration,100) == 0
            disp(iteration + " iterations done. Delta x size " + norm(delta_x))
        end
    end
end

function y = estimate_distances(x0, measurements)
    y = zeros(size(measurements,1),1);
    prev_t = 0;
    expected = x0;
    for i = 1:size(measurements,1)
        t = measurements(i,1);
        [expected_pos, expected_vel] = universal_conic_section_orbit(t-prev_t, expected(1:3), expected(4:6));
        measured_pos = measurements(i,2:4)';
        expected = [expected_pos; expected_vel];
        y(i) = norm(measured_pos-expected_pos);
        prev_t = t;
    end
end

