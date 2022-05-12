addpath('DensePose/')
densePose = DensePose();
cam = webcam();
model = load('DensePose\UV_Processed.mat');
%%
close all
figure(1)
for i = 1:24
    hold on
    inds = model.All_FaceIndices==i;
    u = [];
    v = [];
    for j = 1:3
        inds2 = model.All_Faces(inds, j);
        u = cat(1, u, model.All_U_norm(inds2));
        v = cat(1, v, model.All_V_norm(inds2));
    end
    u = u + mod(i*1.5, 7);
    v = v + 1.5*floor(i/5);
    scatter(u, v)
end


%% execute
figure(2)
% while 1
img = snapshot(cam);
[imPred, UVPred, labelsPred] = densePose.predictUV(img);
subplot(1,2,1)
image(imPred)

subplot(1,2,2)
for i = 1:25
    inds = labelsPred==i;
    u = UVPred(1,inds);
    v = UVPred(2,inds);
    u = u + mod(i*1.5, 7);
    v = v + 1.5*floor(i/5);
    scatter(u, v); hold on
end
drawnow
% end