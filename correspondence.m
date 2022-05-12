addpath('remesh/')
addpath('utils/')

close all

robotName = 'sawyer'; % yumi 


load(['correspondenceNet/inds_' robotName '.mat'])
indsRobot = inds;%(1:2:end, 1:5:end);
load('correspondenceNet/inds_human.mat')
indsHuman = inds;%(1:2:end, 1:5:end);


%


%%
figure(1); hold on

[~, ~, ~, robot, robotArmInds]  = getRobotVerts(robotName);
[~, ~, ~, human, humanArmInds, humanArmInds6000]  = getHumanVerts();

robot.setJoints(robot.home)
vertsRobot = robot.forwardRender();
vertsRobotArm = vertsRobot(:, robotArmInds);
vertsRobot = vertsRobot(:,1:10:end);
scatter3(vertsRobot(1, :),vertsRobot(2, :),vertsRobot(3,:),'Marker','.','SizeData',4)

human.boneRotations(:,:,6) = [0.58916837	-0.55116802	0.59084243
    0.79804611	0.51141560	-0.31871039
    -0.12650323	0.65929347	0.74116731];

human.boneRotations(:,:,7) = [0.71883053	0.63353086	0.28621918
    0.0057927682	0.40624347	-0.91374648
    -0.69516122	0.65848672	0.28835028];

% human.boneRotations(:,:,7)*eul2rotm([(-45)*pi/180 0 0]);
% human.boneRotations(:,:,7) = human.boneRotations(:,:,7)*eul2rotm([0 0 (20)*pi/180]);
vertsHuman = .8*human.forwardRender();
vertsHuman = vertsHuman + [.6; .2; .2];
vertsHumanArm = vertsHuman(:, humanArmInds);
vertsHuman = vertsHuman(:,1:10:end);
scatter3(vertsHuman(1, :),vertsHuman(2, :),vertsHuman(3,:),'Marker','.','SizeData',4)

axis equal

%
% for i = 1:2:numel(indsHuman)
% for k =[1 5 10]
    figure; hold on
    scatter3(vertsRobot(1, :),vertsRobot(2, :),vertsRobot(3,:),'Marker','.','SizeData',4)
scatter3(vertsHuman(1, :),vertsHuman(2, :),vertsHuman(3,:),'Marker','.','SizeData',4)
axis equal

for j = 1:2:size(indsHuman,2)
    p0Mean = zeros(3,1);
    p1Mean = zeros(3,1);
    for i = 1:1:length(indsHuman(:,j))
        p0 = vertsRobotArm(:, indsRobot(i,j));
%         p1 = vertsHumanArm(:, indsHuman(i,j));
        p1 = vertsHumanArm(:, indsHuman(i,j));
        p0Mean = p0Mean+ p0;
        p1Mean = p1Mean+ p1;
        line3 = cat(2, p0, p1);
        plot3(line3(1,:), line3(2,:), line3(3,:), 'color',[0 0 0]+.7,'LineWidth',.1, 'Marker','.','MarkerEdgeColor','r','MarkerSize',10, 'LineStyle','none')
        
    end
    line3Mean = cat(2, p0Mean./i, p1Mean./i);
    plot3(line3Mean(1,:), line3Mean(2,:), line3Mean(3,:), 'color','k','LineWidth',1,'Marker','.','MarkerSize',16 ,'LineStyle','none')
        
end
% end
%% network setup
figure(2)

numSegments = size(indsHuman,  2);
numPoints = size(indsHuman,  1);


% % % subLayers = [
% % %     fullyConnectedLayer(3*numPoints, 'Name','netint_1')
% % %     leakyReluLayer
% % %     fullyConnectedLayer(3*numPoints)
% % %     leakyReluLayer
% % %     fullyConnectedLayer(3*numPoints)
% % %     leakyReluLayer('Name','netout_1')
% % %     ];
% % % 
% % % inputlayers = [
% % %     featureInputLayer(3*numPoints)
% % % %     SplitLayer(Name='splitLayer',NumOutputs=numPoints)
% % %     ];
% % % 
% % % outputlayers = [
% % %     MeanLayer(Name='meanLayer',NumInputs=numPoints*2)
% % % %     fullyConnectedLayer(256)
% % % %     leakyReluLayer
% % % %     fullyConnectedLayer(256)
% % %     leakyReluLayer
% % %     fullyConnectedLayer(2*numPoints*numSegments)
% % % 
% % %     ];
% % % lgraph = layerGraph(inputlayers);
% % % 
% % % numSubNets = 1;
% % % 
% % % for j = 1:numSubNets
% % %     outputlayers(1).Name = ['meanLayer' num2str(j)];
% % %     lgraph = addLayers(lgraph, SplitLayer(Name=['splitLayer' num2str(j)],NumOutputs=numPoints));
% % %     lgraph = addLayers(lgraph, outputlayers);
% % % end
% % % 
% % % for j = 1:numSubNets
% % %     for i  = 1:numPoints
% % %         subLayers(1).Name = ['netin_' num2str(i) '_' num2str(j)];
% % %         subLayers(end).Name = ['netout_' num2str(i) '_' num2str(j)];
% % %         lgraph = addLayers(lgraph, subLayers);
% % %         lgraph = connectLayers(lgraph,['netout_' num2str(i) '_' num2str(j)],['meanLayer' num2str(j) '/in' num2str(i)]);
% % %         lgraph = connectLayers(lgraph,['splitLayer' num2str(j) '/out' num2str(i)], ['netin_' num2str(i) '_' num2str(j)]);
% % %         lgraph = connectLayers(lgraph,['splitLayer' num2str(j) '/out' num2str(i)], ['meanLayer' num2str(j) '/in' num2str(i+numPoints)]);
% % %     
% % %     end
% % % end
% % % 
% % % 
% % % for j = 1:numSubNets
% % %         lgraph = connectLayers(lgraph,'input',['splitLayer' num2str(j)]);
% % % end
% % % 
% % % if numSubNets > 1
% % % catLayer = concatenationLayer(1, numSubNets, 'Name','cat');
% % % lgraph = addLayers(lgraph, catLayer);
% % % for j = 1:numSubNets
% % %         lgraph = connectLayers(lgraph,['meanLayer' num2str(j)], ['cat/in' num2str(j)]);
% % % end
% % % end
% % % 
% % % % lgraph = addLayers(lgraph, lgraph.Layers(4:end));
% % % 
% % % plot(lgraph)

layers = [
    featureInputLayer(3*numPoints)
    fullyConnectedLayer(3*numPoints*numSegments)
%     tanhLayer
%     fullyConnectedLayer(3*numPoints*numSegments)
    ];

lgraph = layerGraph(layers);
dlnet = dlnetwork(lgraph);

dlnets = cell(numSegments, 1);

load('data/trajectoryArmHumanPointsSegsXYZ.mat')
load(['data/trajectoryArm' robotName 'PointsSegsXYZ.mat'])

%% network train
D  = zeros(numSegments);

for networkInd = 1:numSegments

        dlnet = dlnetwork(lgraph);

    features  = reshape(trajectoryArmHumanPointsSegsXYZ(:,:,networkInd,:), size(trajectoryArmHumanPointsSegsXYZ,1), [])';
    % % features = reshape(features, 2,[]);

    dlX = dlarray(gpuArray(features), 'CB');



    % targets = trajectoryArmRobot(:,indsRobot,:);
    targets = reshape(trajectoryArmRobotPointsSegsXYZ, size(trajectoryArmRobotPointsSegsXYZ,1), numPoints, numSegments, 3);
    targets = permute(targets, [2 3 4 1]); % points segs XYZ time

    targets = reshape(targets, [], size(trajectoryArmRobotPointsSegsXYZ,1));

    dlY = dlarray(gpuArray(targets), 'CB');


    %% network learn
    decay = 0;
    iteration = 0;
    initialLearnRate = 20;
    momentum = 0.8;
    velocity = [];

    if networkInd==1
        numIts = 500;
    else
        numIts = 500;
    end

% numsamples = 100;

    for i = 1:numIts
%         inds = randsample(size(dlX,2), numsamples,false);

%         [gradients,state, loss, Di] = dlfeval(@correspondenceGradients, dlnet, dlX(:, inds), dlY(:, inds), numSegments, numPoints);
        [gradients,state, loss, Di] = dlfeval(@correspondenceGradients, dlnet, dlX, dlY, numSegments, numPoints);

dlnet.State = state;

        % Determine learning rate for time-based decay learning rate schedule.
        learnRate = initialLearnRate/(1 + decay*iteration);

        % Update the network parameters using the SGDM optimizer.
        [dlnet, velocity] = sgdmupdate(dlnet,gradients,velocity,learnRate,momentum);

    end

    D(:,networkInd) = Di;
    dlnets{networkInd} = dlnet;

    it = networkInd

end

save('data/D','D')
save(['correspondenceNet/dlnets' robotName],'dlnets')

%% find correspondence
load('data/D.mat')
addpath('search/')

D = D - eye(size(D))*0;
surf(D); hold on

goalFunc = @(state) state(1) == 1;
expandFunc = @(state) state + [-1, 0, -1;
    0, -1, -1];
% expandFunc = @(state) state + [-1, 0, -1, 1, 0, 1;
%                                0, 1, 1 0, -1, -1];

path = search(D,expandFunc, goalFunc);
ind = find(path(1,:)==size(D,1));
dlnets_inds = [];
for i = 1:ind
    val = D(path(1,i), path(2,i));
    plot3(path(2,i), path(1,i), val, 'Marker','.','MarkerSize',20);
end
for i =1:numSegments
    dlnets_inds(i) = path(2,find(path(1,:)==i,1));
end

save(['correspondenceNet/dlnets_inds' robotName],'dlnets_inds')
