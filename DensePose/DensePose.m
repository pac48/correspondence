classdef DensePose < handle
    % Dense Pose  wrapper

    properties
        model
        kd
        numVerts
        allVertInds
    end
    properties(Access=private)
        X
        Y
    end

    methods
        function obj = DensePose()
            terminate(pyenv)
            pyenv('Version', 'D:\DensePose\venv\Scripts\python.exe','ExecutionMode','OutOfProcess')
            mod = py.importlib.import_module('DensePose.dense_pose');
            py.importlib.reload(mod);
            obj.model = load('DensePose\UV_Processed.mat');
            obj.numVerts = max(max(obj.model.All_vertices));
            addpath('DensePose\kdtree\toolbox\')

            allUV = [];
            obj.allVertInds = [];
            for i = 1:24
                indsLabel = obj.model.All_FaceIndices==i;
                u = [];
                v = [];
                for j = 1:3
                    inds2 = double(obj.model.All_Faces(indsLabel, j));
                    u = cat(1, u, obj.model.All_U_norm(inds2));
                    v = cat(1, v, obj.model.All_V_norm(inds2));
                    obj.allVertInds = cat(1,obj.allVertInds,obj.model.All_vertices(inds2)');
                end
                [u, v] = obj.UVOffset(i, u, v);
                allUV = cat(1, allUV, [u v]);
            end

%             [~, indsUnique] = unique(obj.allVertInds);
%             obj.allVertInds = obj.allVertInds(indsUnique);
%             allUV = allUV(indsUnique, :);

% [~,idx] = sort(obj.allVertInds);
% allUV = allUV(idx, :);

addpath([pwd '\remesh'])

[~, ~, ~, human, humanArmInds, humanArmInds6000]  = getHumanVerts();
load('DensePose/inds_human.mat')
cylinderInds = reshape(humanArmInds6000(inds),[],1);
map = zeros(obj.numVerts,1);
map(cylinderInds) = 1;

mapArmInds = zeros(length(humanArmInds6000), 1);
mapArmInds(humanArmInds6000) = 1;

AllValidUV = [];
AllValidInds = [];

for i = 1:length(obj.allVertInds)
    if map(obj.allVertInds(i)) || ~mapArmInds(obj.allVertInds(i))
        AllValidInds = cat(1, AllValidInds, obj.allVertInds(i));
        AllValidUV = cat(1, AllValidUV, allUV(i,:));

    end

end

obj.allVertInds = AllValidInds;

            obj.kd = KDTree(AllValidUV);
        end

        function [u, v] = UVOffset(~, i, u, v)
            u = u + 2*mod(i*1.5, 7);
            v = v + 2*floor(i/5);
        end

        function [verts2d, imPred] = predictVerts(obj, img)
            if isempty(obj.X)
                [Xgrid, Ygrid] = meshgrid(1:size(img,2), 1:size(img,1));
                obj.X = Xgrid;
                obj.Y = Ygrid;
            end

            [imPred, UVPred, labelsPred, bounding_box] = obj.predictUV(img);
            verts2d = [];
            if any(bounding_box==0)
                return
            end
            verts2d = zeros(obj.numVerts, 2);
            vertsCounter = zeros(obj.numVerts, 1)+0.0000001;

            [Xbox,Ybox] = meshgrid(...
                floor(linspace(bounding_box(1),bounding_box(2), size(labelsPred,2))), ...
                floor(linspace(bounding_box(3),bounding_box(4),size(labelsPred,1))));

            if ~isempty(UVPred)
                for i = 1:24
                    indsLabel = labelsPred==i;
                    u = UVPred(1,indsLabel);
                    v = UVPred(2,indsLabel);
                    if ~isempty(u)
                        [u, v] = obj.UVOffset(i, u, v);
                        UV = [u' v'];
                        [indsClosest, ~] = nn(obj.kd, UV);
                        vertInds = obj.allVertInds(indsClosest);
                        XY = [Xbox(reshape(indsLabel,[],1)) size(img,1)-Ybox(reshape(indsLabel,[],1))];
                        for j = 1:length(vertInds)
                            verts2d(vertInds(j),:) = verts2d(vertInds(j),:) + XY(j, :);%(uniqueInds, :);
                            vertsCounter(vertInds(j)) = vertsCounter(vertInds(j))+1;
                        end
                    end
                end
                verts2d = verts2d./vertsCounter;

            end

        end

        function [imPred, UVPred, labelsPred, bounding_box] = predictUV(~, img)
            imgPy = py.numpy.array(img);
            %             [imPredPy, tmp] = py.DensePose.dense_pose.execute(imgPy);
            outPy = cell(py.DensePose.dense_pose.execute(imgPy));
            imPred = uint8(outPy{1});
            imPred = imPred(:,:,[3 2 1]);
            if length(outPy{2}) > 0
                UVPred = double(outPy{2});
                labelsPred = double(outPy{3});
                xywh = floor(double(outPy{4}));
                bounding_box = [xywh(1) xywh(1)+xywh(3) xywh(2) xywh(2)+xywh(4)];
            else
                UVPred = [];
                labelsPred = [];
                bounding_box = [];
            end

        end
    end
end