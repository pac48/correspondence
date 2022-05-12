

addpath('DAE');
addpath('DAE/mex/');
addpath('URDF');
addpath('URDF/mex/');

human = Human('female');
robot = Robot('yumi');

filename = 'DAE\data\female.dae';
 [~, ~, cameras, lights] = parseDAEMex(filename);

scene = struct();
scene.lights = lights;
scene.actors = {human, robot};
scene.cameras = cameras;
% scene.meshes = meshes;


% scene.cameras{1}.xfov = 100;
im  = zeros(256*2,256*2,3,'single');
for x = 0:.1:2*pi*88 % pi/2;
    tic

    Trot = [eul2rotm([.1 0 0]) [0;0;0]; 0 0 0 1]';
%     scene.cameras{1}.transform = Trot*scene.cameras{1}.transform;
%     human.transform = Trot*human.transform;
    human.boneRotations(:,:,6) = human.boneRotations(:,:,6)*eul2rotm([.1 0 0]);
    im = render(scene);
    image(im)
    drawnow

    toc

end