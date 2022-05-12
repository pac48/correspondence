addpath('DecoMR/')
decoMR = DecoMR();
% cam = webcam();
bag = rosbag('bags/exerciseSyncYumi.bag');
bagImages = select(bag, Topic='/camera/color/image_raw');
imageMsgs = readMessages(bagImages, 'DataFormat', 'struct');

%% execute
figure(1)
% while 1
inds = floor(linspace(980, 2000, 250));
for n = inds
    img = rosReadImage(imageMsgs{n});
    subplot(1,2,1)
    image(img)

    [vertices, cameraTranslation] = decoMR.predict(img);
    subplot(1,2,2)
    scatter3(vertices(:,1),vertices(:, 2),vertices(:,3))
    view([1 0 0 ])
    axis equal
    drawnow
end