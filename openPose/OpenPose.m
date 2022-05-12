classdef OpenPose
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        dlnet
    end

    methods
        function obj = OpenPose()
            tmp = load('openPose\openPose.mat');
            obj.dlnet = tmp.dlnet;

        end

        function poses = predict(obj, img, varargin)
            inputStruct = struct(varargin{:});
            render = false;
            if isfield(inputStruct, 'render')
                render = inputStruct.render;
            end

            netInput = im2single(img)-0.5;
            netInput = netInput(:,:,[3 2 1]);
            netInput = dlarray(netInput,"SSC");
             [heatmaps, pafs] = predict(obj.dlnet, netInput);
            params = getBodyPoseParameters;
            heatmaps = extractdata(heatmaps);
            heatmaps = heatmaps(:,:,1:end-1);
            pafs = extractdata(pafs);

        poses = getBodyPoses(heatmaps,pafs,params);
        if render
            renderBodyPoses(img, poses, size(heatmaps,1), size(heatmaps,2), params);
        end

        end
    end
end