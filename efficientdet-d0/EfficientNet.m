classdef EfficientNet

    properties
        classNames
        anchorBoxes
        matFile
    end

    methods
        function obj = EfficientNet()
            addpath('efficientdet-d0\pretrained-efficientdet-d0\model\')
            obj.matFile = 'efficientDetD0-coco.mat';
            obj.classNames = EfficientNet.getCOCOClasess;
            % Determine anchor boxes.
            obj.anchorBoxes = EfficientNet.generateAnchorBox;
        end

        function [bboxes,scores,labels] = predict(obj, img, varargin)
            inputStruct = struct(varargin{:});
            render = false;
            if isfield(inputStruct, 'render')
                render = inputStruct.render;
            end

            [I, imageScale] = EfficientNet.preprocess(img);
            out = efficientDetD0_predict_mex(obj.matFile, I);
            [bboxes,scores,labels] = EfficientNet.postprocess(out, ...
                obj.anchorBoxes, obj.classNames, imageScale);


            if render
                % Visualize results.
                annotations = string(labels) + ": " + string(round(100*scores)) + "%";
                imgAnnotation = insertObjectAnnotation(img, 'rectangle', bboxes, cellstr(annotations));
                imshow(imgAnnotation);
            end

        end
    end

    methods(Static)
        function [selectedBboxes,selectedScores,selectedLabels] = postprocess(out, anchorBoxes, classNames, imageScale)
            % This function postprocesses the output.

            % Copyright 2021 The MathWorks, Inc.

            numClasses = size(classNames,1);
            numAnchorsPerLevel = 9;

            bboxesOutAct = cellfun(@(x)reshape(permute(reshape(permute(stripdims(x),[3 2 1]),4,numAnchorsPerLevel,[]),[2 3 1]),[],4),...
                out(end:-2:2,:),'UniformOutput',false);
            bboxesOutAct = cat(1,bboxesOutAct{:}); % [ty, tx, th, tw]
            bboxesOutAct = extractdata(bboxesOutAct);

            classes = cellfun(@(x)reshape(permute(reshape(permute(stripdims(x),[3 2 1]),numClasses,numAnchorsPerLevel,[]),[2 3 1]),[],numClasses),...
                out(end-1:-2:1,:),'UniformOutput',false);
            classes = cat(1,classes{:});
            classes = extractdata(classes);

            % Extract the center, width and height of the bounding boxes.
            bboxes_cyx = bboxesOutAct(:,1:2) .* anchorBoxes(:,3:4) + anchorBoxes(:,1:2);
            bboxes_hw = exp(bboxesOutAct(:,3:4)) .* anchorBoxes(:,3:4);

            % Convert diagonal pair of box corner [y1, x1, y2, x2] to top-left format [x1, y1, width, height].
            bboxes = [bboxes_cyx(:,[2 1]) - bboxes_hw(:,[2 1])/2, bboxes_hw(:,[2 1])];
            bboxes(:,1:2) = bboxes(:,1:2) + 1; % Convert zero origin to one origin.

            [scores, classIndices] = max(classes,[],2);
            scores = 1./(1+exp(-scores));

            labels = categorical(classNames(classIndices));

            % Select bounding boxes, scores and labels.
            confidenceThreshold = 0.5;
            ind = scores > confidenceThreshold;

            overlapThreshold = 0.5;
            [selectedBboxes,selectedScores,selectedLabels] = ...
                selectStrongestBboxMulticlass(bboxes(ind,:),scores(ind),labels(ind),...
                "OverlapThreshold",overlapThreshold);

            % Remove 'background' category if present.
            finalInd = selectedLabels == 'background';

            selectedBboxes = selectedBboxes(~finalInd,:);
            selectedScores = selectedScores(~finalInd);
            selectedLabels = selectedLabels(~finalInd);
            selectedLabels = removecats(selectedLabels, 'background');

            % Scale the generated bounding boxes to size of the input image
            selectedBboxes = [selectedBboxes(:,1:2)-1 selectedBboxes(:,3:4)]./imageScale + [1 1 0 0];

            selectedBboxes = gather(selectedBboxes);
            selectedScores = gather(selectedScores);
            selectedLabels = gather(selectedLabels);
        end
        function [new_image, image_scale] = preprocess(image)
            % This function preprocesses the input image.

            % Copyright 2021 The MathWorks, Inc.

            % Normalize the input image.
            I = im2single(image);
            meanIm = [0.485 0.456 0.406];
            stdIm = [0.229 0.224 0.225];
            I = (I - reshape(meanIm,[1 1 3]))./reshape(stdIm,[1 1 3]);

            % Compute scale factors.
            [image_h,image_w,~]= size(I);
            image_scale_y = 512/image_h;
            image_scale_x = 512/image_w;
            image_scale = min(image_scale_x,image_scale_y);
            scaled_height = single(image_h * image_scale);
            scaled_width = single(image_w * image_scale);

            % Resize image to size [512 512].
            scaled_image = imresize(I,[scaled_height,scaled_width],'method','bilinear');
            new_image = padarray(scaled_image,abs(size(scaled_image,1:2)-[512 512]),'post');
        end
        function classNames = getCOCOClasess()
            % ClassNames for predefined label id mapping.

            % Copyright 2021 The MathWorks, Inc.

            classDefs = {
                1, 'person',
                2, 'bicycle',
                3, 'car',
                4, 'motorcycle',
                5, 'airplane',
                6, 'bus',
                7, 'train',
                8, 'truck',
                9, 'boat',
                10, 'traffic light',
                11, 'fire hydrant',
                13, 'stop sign',
                14, 'parking meter',
                15, 'bench',
                16, 'bird',
                17, 'cat',
                18, 'dog',
                19, 'horse',
                20, 'sheep',
                21, 'cow',
                22, 'elephant',
                23, 'bear',
                24, 'zebra',
                25, 'giraffe',
                27, 'backpack',
                28, 'umbrella',
                31, 'handbag',
                32, 'tie',
                33, 'suitcase',
                34, 'frisbee',
                35, 'skis',
                36, 'snowboard',
                37, 'sports ball',
                38, 'kite',
                39, 'baseball bat',
                40, 'baseball glove',
                41, 'skateboard',
                42, 'surfboard',
                43, 'tennis racket',
                44, 'bottle',
                46, 'wine glass',
                47, 'cup',
                48, 'fork',
                49, 'knife',
                50, 'spoon',
                51, 'bowl',
                52, 'banana',
                53, 'apple',
                54, 'sandwich',
                55, 'orange',
                56, 'broccoli',
                57, 'carrot',
                58, 'hot dog',
                59, 'pizza',
                60, 'donut',
                61, 'cake',
                62, 'chair',
                63, 'couch',
                64, 'potted plant',
                65, 'bed',
                67, 'dining table',
                70, 'toilet',
                72, 'tv',
                73, 'laptop',
                74, 'mouse',
                75, 'remote',
                76, 'keyboard',
                77, 'cell phone',
                78, 'microwave',
                79, 'oven',
                80, 'toaster',
                81, 'sink',
                82, 'refrigerator',
                84, 'book',
                85, 'clock',
                86, 'vase',
                87, 'scissors',
                88, 'teddy bear',
                89, 'hair drier',
                90, 'toothbrush'
                };
            index = cat(1,classDefs{:,1});
            classNamesOrg = classDefs(:,2);
            classNames = repmat({'unknown'},[90 1]);
            classNames(index) = classNamesOrg;
        end
        function anchorBoxes = generateAnchorBox()
            % Generate multi scale anchor boxes for different feature levels.

            % Copyright 2021 The MathWorks, Inc.

            minLevel = 3;
            maxLevel = 7;
            numScales = 3;
            anchorScale = 4;
            aspectRatios = [1 2 0.5];
            inputSize = [512 512];
            featSizes = inputSize/128 .* 2.^((maxLevel-minLevel):-1:0)';
            strides = inputSize(1:2)./featSizes;
            numOfBoxesEachLevel = numScales*numel(aspectRatios);
            numOfGrid = sum(prod(featSizes,2),2);
            numOfBoxes = sum(numOfGrid)*numOfBoxesEachLevel;
            octaveScales = (0:(numScales-1))/numScales;
            [aspectRatiosGrid,octaveScalesGrid] = ndgrid(aspectRatios,2.^octaveScales);
            aspectRatiosGrid = aspectRatiosGrid(:);
            octaveScalesGrid = octaveScalesGrid(:);
            aspectX = sqrt(aspectRatiosGrid);
            aspectY = 1./aspectX;
            anchorUnitSizeX = anchorScale .* octaveScalesGrid(:) .* aspectX;
            anchorUnitSizeY = anchorScale .* octaveScalesGrid(:) .* aspectY;
            boxScalesAct = zeros(numOfBoxes,2);
            boxOffsetsAct = zeros(numOfBoxes,2);
            indPre = 1;
            for k = 1:(maxLevel - minLevel + 1)
                anchorSizeX = anchorUnitSizeX * strides(k,2);
                anchorSizeY = anchorUnitSizeY * strides(k,1);
                x = (strides(k,2)/2:strides(k,2):inputSize(2))';
                y = (strides(k,1)/2:strides(k,2):inputSize(1))';
                [xv,yv] = ndgrid(x,y);
                indPost = indPre + numel(xv) * numOfBoxesEachLevel -1;
                boxScalesAct(indPre:indPost,:) = repmat([anchorSizeY,anchorSizeX],[numel(xv),1]);
                boxOffsetsAct(indPre:indPost,:) = repelem([yv(:) xv(:)],numOfBoxesEachLevel,1);
                indPre = indPost + 1;
            end
            anchorBoxes = [boxOffsetsAct boxScalesAct];
        end
    end
end