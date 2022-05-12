% addpath('DensePose/')
% densePose = DensePose();

addpath('kdtree\toolbox\');
addpath('DecoMR/')
addpath('remesh/')
decoMR = DecoMR();

bag = rosbag('bags/exerciseSyncYumi.bag');
bagImages = select(bag, Topic='/camera/color/image_raw');
imageMsgs = readMessages(bagImages, 'DataFormat', 'struct');


%% execute
figure(2)

img = rosReadImage(imageMsgs{1});
[vertices, cameraTranslation] = decoMR.predict(img);
numVerts = size(vertices,1);
trajectory = zeros(300, numVerts, 3);
count = 1;

for n = floor(linspace(980, 1938, 800))
    n
    img = rosReadImage(imageMsgs{n});
    subplot(1,2,1)
    image(img)

    [vertices, cameraTranslation] = decoMR.predict(img);
    subplot(1,2,2)
    scatter3(vertices(:,1),vertices(:, 2),vertices(:,3))
    trajectory(count, :,:) = vertices;
    count = count+1;

drawnow
n

end

trajectory(count:end, :,:) = [];

% trajectoryRobot = permute(trajectory,[3 1 2]);
[~, ~, ~, human, humanArmInds, humanArmInds6000]  = getHumanVerts();
% humanScale = 500;
trajectoryArmHuman= trajectory(:, humanArmInds6000, :);
load('correspondenceNet/inds_human.mat')
indsHuman = inds;%(1:2:end, 1:5:end)';
numPoints = size(indsHuman, 1);
numSegments = size(indsHuman, 2);
trajectoryArmHumanPointsSegsXYZ = reshape(trajectoryArmHuman(:,indsHuman,:), [], numPoints, numSegments, 3);


save('data/trajectoryArmHumanPointsSegsXYZ','trajectoryArmHumanPointsSegsXYZ');%,'-v7.3')

%% joints yumi
addpath(genpath('Yumi'));
addpath(genpath('DAE'));
addpath(genpath('render'));

robot = Robot();
verts = robot.forwardRender;

figure
bag = rosbag('bags/exerciseSyncYumi.bag');
bagJoints= select(bag, Topic='/joint_states  ');
jointMsgs = readMessages(bagJoints, 'DataFormat', 'struct');

numVerts  = size(verts, 2);
trajectory = zeros(800, numVerts, 3); % time x verts x XYZ
count = 1;

for n = floor(linspace(3180, 6425, 800))
    q = jointMsgs{n}.Position';
    robot.setJoints(q);
%     [im, vertInds, verts2d, visibleInds] = render(scene);
    verts = robot.forwardRender;
    trajectory(count, :, :) = verts';
    count = count+1;
%     imshow(im);
    drawnow
n
robot.plotObject();
drawnow


end

trajectory(count:end, :,:) = [];

% trajectoryRobot = permute(trajectory,[3 1 2]);
[~, ~, ~, robot, robotArmInds]  = getRobotVerts('yumi');
% robotScale = 2;
trajectoryArmRobot = trajectory(:, robotArmInds, :);%./robotScale;
load('correspondenceNet/inds_yumi.mat')
indsRobot = inds;%(1:2:end, 1:5:end)';
numPoints = size(indsRobot, 1);
numSegments = size(indsRobot, 2);
trajectoryArmRobotPointsSegsXYZ = reshape(trajectoryArmRobot(:,indsRobot,:), [], numPoints, numSegments, 3);


save(['data/trajectoryArm' 'yumi' 'PointsSegsXYZ'],'trajectoryArmRobotPointsSegsXYZ');%,'-v7.3')



%% joints sawyer
addpath(genpath('Sawyer'));
addpath(genpath('DAE'));
addpath(genpath('render'));

robot = Robot();
verts = robot.forwardRender;

figure
bag = rosbag('bags/exerciseSawyerSync.bag');
bagJoints= select(bag, Topic='robot/joint_states  ');
jointMsgs = readMessages(bagJoints, 'DataFormat', 'struct');


cond = cellfun(@(x) length(x.Position)>5, jointMsgs);
jointMsgs = jointMsgs(cond);

numVerts  = size(verts, 2);
trajectory = zeros(800, numVerts, 3); % time x verts x XYZ
count = 1;
start = 1250;
finish = 4700;

for n = floor(linspace(start, finish, 800))
    
    % fake add the gripper
    jointMsgs{n}.Position = cat(1, jointMsgs{n}.Position, [0;0]);
    jointMsgs{n}.Name = cat(1, jointMsgs{n}.Name, {'right_gripper_l_finger_joint'},{'right_gripper_r_finger_joint'});
    

    q = jointMsgs{n}.Position';
    inds = arrayfun(@(x) find(strcmp(x, jointMsgs{n}.Name),1), robot.jointNames, 'UniformOutput', false);
    q = q([inds{:}]);
    
   robot.setJoints(q);
%     [im, vertInds, verts2d, visibleInds] = render(scene);
    verts = robot.forwardRender;
    trajectory(count, :, :) = verts';
    count = count+1;
%     imshow(im);
    drawnow
n
robot.plotObject();
drawnow


end

trajectory(count:end, :,:) = [];

% trajectoryRobot = permute(trajectory,[3 1 2]);
[~, ~, ~, robot, robotArmInds]  = getRobotVerts('sawyer');
% robotScale = 2;
trajectoryArmRobot = trajectory(:, robotArmInds, :);%./robotScale;
load('correspondenceNet/inds_sawyer.mat')
indsRobot = inds;%(1:2:end, 1:5:end)';
numPoints = size(indsRobot, 1);
numSegments = size(indsRobot, 2);
trajectoryArmRobotPointsSegsXYZ = reshape(trajectoryArmRobot(:,indsRobot,:), [], numPoints, numSegments, 3);


save(['data/trajectoryArm' 'sawyer' 'PointsSegsXYZ'],'trajectoryArmRobotPointsSegsXYZ');%,'-v7.3')



