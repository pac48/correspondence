addpath('openPose/')
openPose = OpenPose();
% cam = webcam();
bag = rosbag('bags/exerciseSyncYumi.bag');
bagImages = select(bag, Topic='/camera/color/image_raw');
imageMsgs = readMessages(bagImages, 'DataFormat', 'struct');


%% execute
figure(1)
% while 1
inds = floor(linspace(980, 2000, 250));
for n = inds
    if n < 1630+200
continue
    end
    img = rosReadImage(imageMsgs{n});

    poses = openPose.predict(img, render=true);


    drawnow
end