classdef Robot < handle
% export obj as +z up and +y forward

    properties(Constant, Access=private)
        INIT = 0
        DESTROY = 1
        SETJOINTS = 2
        GETJOINTS = 3
        GETJACOB = 4
        GETBODYTRANS = 5
        GETJOINTTRANS = 6
        GETOPPOS = 7 % operational position
        GETJOINTTREE = 8
        REVOLUTE = 9
        PRISMATIC = 10
        FIXED = 11;

    end

    properties(Access=private)
        robotPtr
        verts
        vertsNormals
        vertsNames
        body2VertMap
        startInd
        directory
        timerObj
        hSpinner
        hSlider
        fig
    end

    properties
        numJoints
        numBodies
        jointNames
        bodyNames
        numEndEffector
        jointMinimums
        jointMaximums
        home = [0
            0
            0
            0
            0
            0
            0
            0
            0
            0
            ];
        bodies
        armInds  
        armVerts2Body
    end

    methods
        function obj = Robot()
            name = 'sawyer';
            p = which('Robot.m');
            directory = p(1:max(find(p=='\',9999)));  
            [obj.robotPtr, obj.numJoints, obj.numBodies, obj.jointNames,...
                obj.bodyNames,obj.numEndEffector, obj.jointMinimums, obj.jointMaximums] ...
                = robot_mex(obj.INIT, [directory name]);
%             obj.jointMinimums(4) = obj.jointMinimums(4) +.7;
%             obj.jointMinimums(3) = obj.jointMinimums(3);
% obj.jointMinimums = obj.jointMinimums + .25;
% obj.jointMaximums = obj.jointMaximums - .25;

            if exist([directory 'obj.mat']) == 2
                tmp = load([directory 'obj.mat']);
                obj.verts = tmp.verts;
                obj.vertsNames = tmp.vertsNames;
                obj.vertsNormals = tmp.vertsNormals;
            else
%                 [points, verts, vertsNormals, verticesTextureCoordinates, vertsNames] = object_loader([directory name 'Remesh.obj']);
                
                [points, verts, vertsNormals, verticesTextureCoordinates, vertsNames] = object_loader([directory name '.obj']);
                vertsNames = cellfun(@(x) x(find(x =='_',1)+1:end), vertsNames,'UniformOutput',false);
                save([directory 'obj'], 'verts', 'vertsNames','vertsNormals');
                obj.verts = verts;
                obj.vertsNormals = vertsNormals;
                obj.vertsNames = vertsNames;
            end

            obj.body2VertMap = containers.Map();
            for b = 1:length(obj.bodyNames)
                tmp = cellfun(@(x) strcmp(obj.bodyNames{b}, x), obj.vertsNames);
                obj.body2VertMap(obj.bodyNames{b}) = find(tmp,1);
                ind = find(tmp,1);
                if ~isempty(ind)
                    obj.bodies{b} = obj.verts{ind};
                end
            end

            obj.setJoints(obj.home)
            obj.startInd = 1;

             tmp = load([pwd '\correspondenceNet\inds_sawyer.mat']);
            indsSawyer = tmp.inds; % inds specifying alligned arms verts
            [~, ~, ~, robotArmInds]  = obj.getRobotVerts();
            obj.armInds = robotArmInds(indsSawyer);
            obj.armVerts2Body = zeros(size(obj.armInds));

            intervals = cumsum(cellfun(@(x) size(x,1), obj.verts));

            for i = 1:numel(obj.armInds)
                b = find(obj.armInds(i) < intervals, 1);
                if isempty(b)
                    b = length(intervals);
                end
                obj.armVerts2Body(i) = b;
            end

        end
        function [verts, TBase, TEnd, vertsInds]  = getRobotVerts(obj)
            obj.setJoints(obj.home)
            
            [verts, ~, ~] = obj.forwardRender();
            
            baseBodyInd = 7;
            endBodyInd = 22;
            
            vertsInds = [];
            count = 0;
            for b = 1:length(obj.bodies)
                if b >= baseBodyInd && b <= endBodyInd
                    vertsInds = cat(1, vertsInds,(1:size(obj.bodies{b}, 1))'+count);
                end
                count = count + size(obj.bodies{b}, 1);
            end
            verts = verts(:, vertsInds)';
            TBase = obj.getBodyTransform(baseBodyInd);
            TEnd = obj.getBodyTransform(endBodyInd);
            end
        function delete(obj)
            robot_mex(obj.DESTROY, obj.robotPtr);
        end
        function setJoints(obj, jointAngles)
            jointAngles = reshape(jointAngles, [], 1);
            jointAngles = min(jointAngles, obj.jointMaximums);
            jointAngles = max(jointAngles, obj.jointMinimums);
            robot_mex(obj.SETJOINTS, obj.robotPtr, jointAngles);
        end
        function jointAgnles = getJoints(obj)
            jointAgnles = robot_mex(obj.GETJOINTS, obj.robotPtr);
        end
        function J = getJacobian(obj)
            J = robot_mex(obj.GETJACOB, obj.robotPtr);
        end
        function T = getBodyTransform(obj, index)
            T = robot_mex(obj.GETBODYTRANS, obj.robotPtr, index);
        end
         function T = getJointTransform(obj, index)
            T = robot_mex(obj.GETJOINTTRANS, obj.robotPtr, index);
        end
        function operationalPosition = getOperationalPosition(obj, index)
            operationalPosition = robot_mex(obj.GETOPPOS, obj.robotPtr, index);
        end
        function [jointInds, jointTypes] = getJointTree(obj, index)
            [jointInds, jointTypes] = robot_mex(obj.GETJOINTTREE, obj.robotPtr, index);
        end
        function [JeR, JwR, JeL, JwL] = getElbowWristJacobians(obj)
            R = cell(14, 1);
            P = cell(14, 1);
            for i = 1:7
                % right
                T = obj.getBodyTransform(i+1);
                R{i} = T(1:3, 1:3);
                P{i} = T(1:3, end);
                % left
                T = obj.getBodyTransform(i+1+10);
                R{i+7} = T(1:3, 1:3);
                P{i+7} = T(1:3, end);
            end

            JeR = zeros(3, obj.numJoints);
            for j = 1:2
                Rj = R{j};
                JeR(:,j) = cross(Rj(:,3),P{3}-P{j});
            end
            JwR = zeros(3, obj.numJoints);
            for j = 1:4
                Rj = R{j};
                JwR(:,j) = cross(Rj(:,3),P{5}-P{j});
            end

            JeL = zeros(3, obj.numJoints);
            for j = 1:2
                Rj = R{j+7};
                JeL(:,j + obj.numJoints/2) = cross(Rj(:,3), P{3+7}-P{j+7});
            end
            JwL = zeros(3, obj.numJoints);
            for j = 1:4
                Rj = R{j+7};
                JwL(:,j + obj.numJoints/2) = cross(Rj(:,3),P{5+7}-P{j+7});
            end
        end
        function Jall = getAllJacobians(obj)
            % right side
            jointOffset = 1;
            Jall = cell(length(obj.bodyNames), 1);
            for j = 1:(length(obj.bodyNames)+1)/2
                J = zeros(3, obj.numJoints);
                T = obj.getBodyTransform(j);
                Ptip = T(1:3, end);
                for i = 1:(j-1-jointOffset)
                    % right
                    if contains(obj.bodyNames{i+jointOffset}, 'gripper')
                        continue
                    end
                    T = obj.getBodyTransform(i+jointOffset);
                    R = T(1:3, 1:3);
                    P = T(1:3, end);
                    J(:, i) = cross(R(:, end) , Ptip - P);
                end
                Jall{j} = J;
            end
            % left side
            jointOffset = 10;
            for j = jointOffset+1:length(obj.bodyNames)
                J = zeros(3, obj.numJoints);
                T = obj.getBodyTransform(j);
                Ptip = T(1:3, end);
                for i = 1:(j-1-jointOffset)
                    % right
                    if contains(obj.bodyNames{i+jointOffset}, 'gripper')
                        continue
                    end
                    T = obj.getBodyTransform(i+jointOffset);
                    R = T(1:3, 1:3);
                    P = T(1:3, end);
                    J(:, i + length(obj.jointNames)/2) = cross(R(:, end) , Ptip - P);
                end
                Jall{j} = J;
            end
        end
        function JVerts = getVertJacobians(obj, verts)
            % verts should be 3 x n, e.g. x1,y1,z1,x2,y2,z2...
            jointOffset = 1;
            JVerts = cell(size(verts,2), 1);
            
            jointInds = cell(length(obj.vertsNames), 1);
            jointTypes = cell(length(obj.vertsNames), 1);
            for b = 1:length(obj.vertsNames)
                [jointIndsb, jointTypesb] = obj.getJointTree(obj.vertsNames{b});
                jointInds{b} = jointIndsb;
                jointTypes{b} = jointTypesb;
            end

            for j = 1:length(JVerts)
                b = obj.armVerts2Body(j);
                jointIndsb = jointInds{b};
                jointTypesb = jointTypes{b};

                J = zeros(3, obj.numJoints);
                Ptip = verts(:, j);
                
                for i = 1:length(jointIndsb)
                    % right
                    if jointTypesb(i) == obj.FIXED
                        continue
                    end
                    T = obj.getJointTransform(jointIndsb(i));
                    R = T(1:3, 1:3);
                    P = T(1:3, end);
                    J(:, jointIndsb(i)) = cross(R(:, end) , Ptip - P);
                end
                JVerts{j} = J;
            end

        end

        function [verts, normals, RGB] = forwardRender(obj)
            numVerts = sum(cellfun(@(x) length(x), obj.verts));
            verts = zeros(numVerts, 4);
            normals = zeros(numVerts, 3);
            
            count = 0;
            for i = 1:length(obj.bodyNames)
                ind = obj.body2VertMap(obj.bodyNames{i});
                if isempty(ind)
                    continue
                end
                tmp = obj.verts{ind};
                tmp2 = obj.vertsNormals{ind};
                T = obj.getBodyTransform(i);
                inds = count+(1:size(tmp,1));
                verts(inds,:) = cat(2, tmp, ones(size(tmp,1), 1))*T';
                normals(inds,:)  = tmp2*T(1:3,1:3)';
                count = count + length(inds);
            end
            verts = verts(:,1:3)';
            normals = normals';
            RGB = .8*ones(size(normals));


        end

        function plotObject(obj)
            % mainly used for debugging
            vNew = [];
            color = [];
            lighDir = [-1; -.5; -1];
            lighDir = lighDir./norm(lighDir);
            for i = 1:length(obj.bodyNames)
                ind = obj.body2VertMap(obj.bodyNames{i});
                if isempty(ind)
                    continue
                end
                tmp = obj.verts{ind};
                tmp2 = obj.vertsNormals{ind};
                T = obj.getBodyTransform(i);
                vNew = cat(1, vNew, cat(2, tmp, ones(size(tmp,1), 1))*T');
                vNormNew = tmp2*T(1:3,1:3)';
                color = cat(1, color, max(-vNormNew*lighDir, .3));
            end
            vNew = vNew(:,1:3);
            T = reshape(1:size(vNew, 1), 3, [])';

            trisurf(T, vNew(:, 1), vNew(:, 2),  vNew(:, 3), color)
            axis equal
            ylim([-.7 .7])
            xlim([-.5 1.3])
            zlim([-.8 1.2])
            view(120, 15)
            colormap gray
            shading interp
        end
        function indexCallback(obj, Q, sld, sld2)
            sld2.Value = sld.Value;
            numFrames = size(Q, 1);
            index = min(max(floor(sld.Value), 1), numFrames);
            obj.setJoints(Q(index, :))
            obj.plotObject()
        end
        function startCallback(obj)
            obj.startInd = floor(obj.hSpinner.Value);
        end
        function stopCallback(obj, fileName)
            endInd = floor(obj.hSpinner.Value);
            inds = obj.startInd:endInd;
            exercises = {'forwardRaise', 'lateralRaise', 'shoulderPress', 'internalExternalRotation'};
            val = input('Which exercise: 1) forwardRaise 2) lateralRaise 3) shoulderPress 4) internalExternalRotation');
%             num = length(Utils.getAllFileNames(exercises{val}))+1;
            fileName = [obj.directory fileName '_' exercises{val} '_inds.mat'];
            save(fileName, 'inds')
        end
        function timerCallback(obj, Q)
            obj.hSpinner.Value = obj.hSpinner.Value + 8;
            obj.indexCallback(Q, obj.hSpinner, obj.hSlider)
        end
        function playCallback(obj, Q, sld)
            if (strcmp(sld.Text,'Play'))
                sld.Text = 'Pause';
                obj.timerObj = timer('StartDelay', 0, 'Period', .1, 'ExecutionMode', 'fixedRate', 'TimerFcn', @(x,y) obj.timerCallback(Q));
                start(obj.timerObj);
            else
                sld.Text = 'Play';
                stop(obj.timerObj);
            end
        end
        function complete = trajectoryBuilder(obj, Q, file)
            obj.directory = file(1:max(find(file=='/',9999)));
%             obj.side = 'L';
%             if contains(file,'R')
%                 obj.side = 'R';
%             end
            fileName = Utils.getFileName(file);
            fileName = fileName (1:find(fileName=='.',1)-1);
            complete = obj.validateInds(fileName);
            if complete
                return
            end
            if isempty(obj.fig) || ~isgraphics(obj.fig)
                obj.fig = uifigure;
                obj.hSpinner = uispinner(obj.fig,'Position',[100, 100, 150, 25]);
                obj.hSlider = uislider(obj.fig, 'Limits',[1, size(Q,1)],'Position',[100, 60, 150, 25]);
                set(obj.hSpinner,'ValueChangedFcn', @(sld, event) obj.indexCallback(Q, sld, obj.hSlider))
                set(obj.hSlider,'ValueChangedFcn', @(sld, event) obj.indexCallback(Q, sld, obj.hSpinner))
                uibutton(obj.fig, 'ButtonPushedFcn', @(sld,event) obj.startCallback(),'Position',[100, 190, 150, 25], 'Text', 'Start');
                uibutton(obj.fig, 'ButtonPushedFcn', @(sld,event) obj.stopCallback(fileName),'Position',[100, 150, 150, 25], 'Text', 'End');
                uibutton(obj.fig, 'ButtonPushedFcn', @(sld,event) obj.playCallback(Q, sld),'Position',[100, 220, 150, 25], 'Text', 'Play');
            end

            %             t = timer('StartDelay', 4, 'Period', 4, 'TasksToExecute', 2, ...
            %                 'ExecutionMode', 'fixedRate','TimerFcn', );
        end
        function bool = validateInds(obj, fileName)
            exercises = {'forwardRaise', 'lateralRaise', 'shoulderPress', 'internalExternalRotation'};
            for val = 1:length(exercises)
                if exist([obj.directory fileName '_' exercises{val} '_inds.mat']) == 0
                    warning([fileName ' in directory ' obj.directory ' is not complete'] )
                    bool = false;
                    return
                end
            end
            disp([fileName ' in directory ' obj.directory ' is complete'] )
            bool = true;
        end
        function trajectoryPlayback(obj, Q)
            for i = 1:5:size(Q,1)
                obj.setJoints(Q(i,:));
                obj.plotObject();
                pause(0.0001);
            end

        end
    end
end