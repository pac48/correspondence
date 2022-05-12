addpath('efficientdet-d0\pretrained-efficientdet-d0\')

bag = rosbag('bags/exerciseSyncYumi.bag');
bagImages = select(bag, Topic='/camera/color/image_raw');
imageMsgs = readMessages(bagImages, 'DataFormat', 'struct');

efficientNet = EfficientNet();

%% execute
figure(1)
% while 1
inds = floor(linspace(980, 2000, 250/1));
for n = inds
    img = rosReadImage(imageMsgs{n});
    [bboxes,scores,labels] = efficientNet.predict(img,render=true);
    drawnow
end