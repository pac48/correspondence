close all
addpath(genpath('DAE'));
addpath('render/');

human = Human('female');

filename = 'DAE\data\female.dae';
[~, ~, cameras, lights] = parseDAEMex(filename);

scene = struct();
scene.lights = lights;
scene.actors = {human};
scene.cameras = cameras;

human.boneRotations(:,:,6) = human.boneRotations(:,:,6)*eul2rotm([(80)*pi/180 0 0]);
human.boneRotations(:,:,10) = human.boneRotations(:,:,10)*eul2rotm([(-80)*pi/180 0 0]);

% textureCoords = double(human.controller.skin.textureCoords);

numVerts = size(human.controller.skin.verts, 1);

% sampleInds = 1:10:numVerts;
% numSamples = length(sampleInd);

% UVDistance = zeros(60, numSamples)+inf;

XTrajectory = zeros(60, numVerts);
YTrajectory = zeros(60, numVerts);

% Mdl1 = KDTreeSearcher(textureCoords(sampleInd,:));
% kd = KDTree(double(textureCoords(sampleInd,:)));

for i = 1:60
     human.boneRotations(:,:,6) = human.boneRotations(:,:,6)*eul2rotm([-.025 0 0]);
    [im, vertInds, verts2d, visibleInds] = render(scene);
    image(im);

    XTrajectory(i, :) = verts2d(1, 1:1:end)+rand(1)*0.003;
    YTrajectory(i, :) = verts2d(2, 1:1:end)+rand(1)*0.003;

    drawnow
end
figure
plot(XTrajectory(:,1:9:end), YTrajectory(:,1:9:end))

% Do not save anymore, now data comes from ROS bag 
% trajectory = cat(3, XTrajectory,YTrajectory);
% save('data/humanTrajectory','trajectory')
