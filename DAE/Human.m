classdef Human < handle

    properties(Access=private)
        texture
        
    end
    properties(Access=public)
        boneNames
        boneRotations % 3x3 rotations matrix
        transform % 4x4 tranform for human
        controller
    end

    methods
        function obj = Human(name)
            assert(strcmp(name, 'female'), 'name must be a char array of a supported human. Supported robots: female')
            p = which('Human.m');
            directory = p(1:max(find(p=='\',9999)));

            caching = true;
            if ~caching
                warning('not caching human object');
            end
            if exist([directory name '.mat']) == 2 && caching
                tmp = load([directory name '.mat']);
                obj = tmp.obj; 
            else
                filename = [directory 'data\' name '.dae'];
                [controllers, ~, ~, ~] = parseDAEMex(filename);
                assert(length(controllers)==1, 'ensure scene only has one armature in it');
                obj.controller = controllers{1};
                obj.texture = imread([directory 'data' '\texture.png']);
                obj.boneNames = obj.controller.bones;
                boneRots = obj.controller.boneTransformsT(1:3,1:3,:);
                obj.boneRotations = permute(boneRots,[2 1 3]);
                obj.transform = obj.controller.transform; % maybe broken
                save([directory name], 'obj');
            end

        end

        function [verts, normals, RGB, boneTransforms] = forwardRender(obj)

            controllerStruct = obj.controller;
%             baseTransform = obj.transform;
            boneTransformsT = controllerStruct.boneTransformsT;
            boneTransformsT(1:3, 1:3,:) = permute(obj.boneRotations, [2 1 3]);

%  T = controller.boneTransformsT(:,:,1)';
%     T(1:3, 1:3) = T(1:3, 1:3)*eul2rotm([0 0 2*(rand(1)) ]); % eul2rotm([0 x 0]) is twist
%     controller.boneTransformsT(:,:,1) = T';

% % boneTransformsT(1:3, 1:3,2)'
            bones = [0 1]; % parent cur
            while ~isempty(bones)
                parent = bones(1);
                bone = bones(2);
                bones = bones(3:end);
                row = controllerStruct.boneConnections(bone, :);
                children = find(row ~=0 , 9999);
                newBones = cat(1, bone*ones(size(children)), children);
                bones = cat(2, bones, reshape(newBones,1,[]));

                if bone <= 1
                    continue
                end
                if parent == 1
                    T1 = eye(4);
                else
                    T1 = boneTransformsT(:,:, parent-1)';
                end
                boneTransformsT(:,:,bone-1) = ...
                    (T1*boneTransformsT(:,:,bone-1)')';
            end


            boneTransforms = permute(boneTransformsT,[2 1 3]);

            tmp = cat(2, controllerStruct.skin.verts, ones(size(controllerStruct.skin.verts,1), 1))*controllerStruct.bindShapeMatrix';
            tmp2 = reshape(controllerStruct.influences(controllerStruct.skin.vertOrder, :), [], 1, size(boneTransformsT,3));
            allTranforms = pagemtimes(controllerStruct.bindMatrixInvsT, boneTransformsT);
            verts = pagemtimes(tmp, allTranforms);
            verts = verts.*tmp2;
            verts = sum(verts, 3);
            verts = obj.transform*verts';
            verts = verts(1:3, :);


            meanNorms = zeros(3, max(controllerStruct.skin.vertOrder));
            meanNorms = getMeanNormals_mex(controllerStruct.skin.normals, controllerStruct.skin.vertOrder, meanNorms);
            meanNorms = meanNorms(:, controllerStruct.skin.vertOrder)';


            tmp = cat(2, meanNorms, ones(size(meanNorms,1), 1))*controllerStruct.bindShapeMatrix';
            tmp2 = reshape(controllerStruct.influences(controllerStruct.skin.vertOrder, :), [], 1, size(boneTransformsT,3));
            normals = pagemtimes(tmp, allTranforms);
            normals = normals.*tmp2;
            normals = sum(normals, 3);
            normals = obj.transform*normals';
            normals = normals(1:3, :);
            normals = normals./sqrt(sum(normals.^2,1));

            textureCoords = controllerStruct.skin.textureCoords';
            textureCoords(2,:) = 1 - textureCoords(2,:);
            inds = floor((textureCoords).*[size(obj.texture,1); size(obj.texture,2)]);
            indsLinear = inds(2,:)+(inds(1,:)-1)*size(obj.texture,1);
            textureR = obj.texture(:,:,1);
            textureG = obj.texture(:,:,2);
            textureB = obj.texture(:,:,3);
            RGB = cat(1, textureR(indsLinear) , textureG(indsLinear) , textureB(indsLinear));
            RGB = single(RGB)./255;

        end

    end


end