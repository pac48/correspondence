classdef CorrespondenceNet
    % CorrespondenceNet

    properties
        decoMR
        dlnets
        indsHuman
        dlnetsInds
        robotArmInds
        humanArmInds6000
    end

    methods
        function obj = CorrespondenceNet(robotName)
            tmp = load([pwd '\correspondenceNet\inds_human.mat']);
            obj.indsHuman = tmp.inds;
            tmp = load([pwd '\correspondenceNet\dlnets_inds' robotName '.mat']);
            obj.dlnetsInds = tmp.dlnets_inds;
            tmp = load([pwd '\correspondenceNet\dlnets' robotName '.mat']); 
            obj.dlnets = tmp.dlnets;
            addpath('remesh/')
            addpath('DAE/')

            [~, ~, ~, robot, robotArmInds]  = getRobotVerts(robotName);
            obj.robotArmInds = robotArmInds;
            [~, ~, ~, human, humanArmInds, humanArmInds6000]  = getHumanVerts();
            obj.humanArmInds6000 = humanArmInds6000;

            addpath('DecoMR\')
            obj.decoMR = DecoMR();

        end

        function [vertsPred, vertices] = predict(obj, img, offset)
            [vertices, cameraTranslation] = obj.decoMR.predict(img);
            %            [verts2d, ~] = obj.densePose.predictVerts(img);
            %             verts2d = permute(verts2d, [3 1 2]);
            %             humanScale = 500;
            %             verts2d = verts2d./humanScale;
            vertsPred = [];
            if isempty(vertices)
                return
            end

            vertsArm = vertices(obj.humanArmInds6000, :);
            numPoints = size(obj.indsHuman, 1);
            numSegments = size(obj.indsHuman, 2);


            %             scatter3(vertices(:,1)+offset, vertices(:,2), vertices(:,3)); hold on
            %              xlim([-1 1])
            %     ylim([-1 1])
            %     zlim([-1 1])
            %     view([1 0 0])

            for networkInd = 1:length(obj.dlnets)
                ind = obj.dlnetsInds(networkInd);

                features = vertsArm(obj.indsHuman(:,ind),:);
                %                 plot3(features(:,1)+offset, features(:,2), features(:,3),'Marker','.', 'MarkerSize',20, 'LineStyle','none')

                features  = reshape(features, 1, [])';
                dlX = dlarray(gpuArray(features), 'CB');
                %                 ind = 20;
                dlnet = obj.dlnets{ind};
                out = dlnet.forward(dlX);
                out = double(gather(extractdata(out)));
                out = reshape(out, numPoints, numSegments, 3);
                outi = reshape(out(:, networkInd,:),numPoints,3);
                %  outi = reshape(out(:, ind,:),[],2);
                vertsPred  = cat(1, vertsPred, outi);
            end
        end
    end
end