close all

addpath('render/');
addpath('remesh\');
addpath('remesh\kdtree\toolbox\');

% name = 'yumi';
name = 'sawyer';
% name = 'human';

if strcmp(name, 'yumi')
    addpath(genpath('Yumi'));
    [robotVerts, TBase, TEnd, robot]  = getRobotVerts(name);
elseif strcmp(name, 'human')
    addpath(genpath('DAE'));
    [robotVerts, TBase, TEnd, human]  = getHumanVerts();
elseif strcmp(name, 'sawyer')
    addpath(genpath('sawyer'));
    [robotVerts, TBase, TEnd, robot]  = getRobotVerts(name);
end
verts  = resampleMesh(robotVerts, 10000);

figure(1); hold on
scatter3(verts(:,1),verts(:,2),verts(:,3),'Marker','.')
axis equal

%% find path coordinate for main axis

p0 = TBase(1:3,end)';
if strcmp(name, 'yumi')
    p1 = TEnd(1:3,end)' + TEnd(1:3,3)'*.05;
elseif strcmp(name, 'sawyer')
    p1 = TEnd(1:3,end)' + TEnd(1:3,3)'*0;%*.05;
elseif strcmp(name, 'human')
    p1 = TEnd(1:3,end)' + TEnd(1:3,3)'*.18;
end

initLine = [];

for l = 1:4

    [line, lineD] = IPCR(verts, initLine, p0, p1, TBase(1:3,3),TEnd(1:3,3));

    plot3(line(:,1),line(:,2),line(:,3), 'LineWidth',3,'Color','k')
    initLine = line;
end


%% tranform to path coordinates

[vertsPC, linePC, vertsApprox] = ConvertPathCoordinates(verts, line, lineD);

figure(2)
scatter3(vertsPC(:,1),vertsPC(:,2),vertsPC(:,3)); hold on
axis equal

%% find paths for radial components 

initLines = [];

for l = 1:2

[lines2, linesD2] = IPCRRadial(vertsPC, linePC, initLines);

initLines = lines2;

end

%% plot mesh

[X, Y] = meshgrid(1:5:size(initLines{1},1), 1:2:length(initLines));
Xq = X;
Yq = X;
Zq = X;

for i = 1:size(Y,1)
    indY = Y(i,:);
    tmp = initLines{indY};
    Xq(i, :) = tmp(1:5:end, 1);
    Yq(i, :) = tmp(1:5:end, 2);
    Zq(i, :) = tmp(1:5:end, 3);
end

figure(99)
surf(Xq(:,1:3:end),Yq(:,1:3:end),Zq(:,1:3:end))
axis equal


%% tranform back

vertsModelPC = [reshape(Xq,[],1) reshape(Yq,[],1) reshape(Zq,[],1)];
vertsModel = ConvertXYZCoordinates(vertsModelPC, linePC, line, lineD);


figure(1); hold on
Xf = reshape(vertsModel(:,1), size(Xq));
Yf = reshape(vertsModel(:,2), size(Yq));
Zf = reshape(vertsModel(:, 3), size(Zq));

surf(Xf, Yf, Zf)
axis equal

%% get UV map

kd = KDTree(vertsModel);
[inds, ~] = nn(kd, robotVerts);

u = X(inds);
v = Y(inds);

figure(6)
scatter(u,v)

figure(7)
subplot(1,2,1)
title('U coordinates')
scatter3(robotVerts(:,1), robotVerts(:,2), robotVerts(:,3), [], u)
axis equal
subplot(1,2,2)
title('V coordinates')
scatter3(robotVerts(:,1), robotVerts(:,2), robotVerts(:,3), [], v)
axis equal


% vis model
kd = KDTree(robotVerts);
[inds, ~] = nn(kd, vertsModel);

u = reshape(X,[],1);
v = reshape(Y,[],1);

figure(8)
subplot(1,2,1)
title('U coordinates')
scatter3(robotVerts(inds,1), robotVerts(inds,2), robotVerts(inds,3), [], u)
axis equal
subplot(1,2,2)
title('V coordinates')
scatter3(robotVerts(inds,1), robotVerts(inds,2), robotVerts(inds,3), [], v)
axis equal
inds = reshape(inds, size(X));
hold on
scatter3(robotVerts(inds(:,25),1), robotVerts(inds(:,25),2), robotVerts(inds(:,25),3), 'black', 'filled')

inds = inds(1:40/20:end, 1:200/20:end)';

save(['correspondenceNet/inds_' name], 'inds')
