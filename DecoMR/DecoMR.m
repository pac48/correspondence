classdef DecoMR < handle
    % Dense Pose  wrapper

    properties
        model
        kd
        numVerts
        allVertInds
        efficientNet
    end
    properties(Access=private)
        X
        Y
    end

    methods
        function obj = DecoMR()
            terminate(pyenv)
            pyenv('Version', [getenv('CONDA_ROOT') '\envs\DecoMR\python.exe'])
            mod = py.importlib.import_module('DecoMR.deco_mr');
            py.importlib.reload(mod);
            addpath('efficientdet-d0\')
            obj.efficientNet = EfficientNet();
        end

      

        function [vertices, cameraTranslation] = predict(obj, img)
%            imgPy = py.numpy.array(img);
            [bboxes, ~, ~] = obj.efficientNet.predict(img,render=false);
            bboxes = double(floor(bboxes));
            vertices = []; 
            cameraTranslation = []; 
            if isempty(bboxes)
                return
            end
%             imshow(img(bboxes(2):bboxes(2)+bboxes(4), bboxes(1):bboxes(1)+bboxes(3),:))
            y0 = max(bboxes(1,2), 1);
            y1 = min(bboxes(1,2)+bboxes(1,4), size(img,1));
            x0 = max(bboxes(1,1), 1);
            x1 = min(bboxes(1,1)+bboxes(1,3), size(img,2));


            img = img(y0:y1, x0:x1, :);
            imgPy = py.numpy.array(img);
            outPy = cell(py.DecoMR.deco_mr.execute(imgPy));
            vertices = double(outPy{1});
            vertices = vertices(:, [3 1 2]);
            vertices(:, [1 3]) = -vertices(:, [1 3]);
            cameraTranslation = double(outPy{2});

        end

      
    end
end