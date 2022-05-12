close all
addpath(genpath('DAE'));
addpath(genpath('Yumi'));
addpath('render/');

robot = Robot();

filename = 'DAE\data\female.dae';
[~, ~, cameras, lights] = parseDAEMex(filename);

scene = struct();
scene.lights = lights;
scene.actors = {robot};
scene.cameras = cameras;

% set starting position
% robot.setJoints(ones(14,1))

Q = robot.getJoints();

Q(1) = 2.0;
Q(3) = -1.1;
Q(4) = -1.3;

robot.setJoints(Q);

% numVerts = size(human.controller.skin.verts, 1)/3;
XTrajectory = [];%zeros(60, 1);
YTrajectory = [];%zeros(60, 1);

for i = 1:60

    Q(1) = Q(1) - .02;    
    Q(2) = Q(2) + .01;    
    robot.setJoints(Q);

    [im, vertInds, verts2d, visibleInds] = render(scene);
    image(im);

    XTrajectory(i, :) = verts2d(1, :)+rand(1)*0.003;
    YTrajectory(i, :) = verts2d(2, :)+rand(1)*0.003;

    drawnow
end

figure
plot(XTrajectory(:,1:50:end), YTrajectory(:,1:50:end))

trajectory = cat(3, XTrajectory,YTrajectory);
% save('data/robotTrajectory','trajectory')
