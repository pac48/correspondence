classdef MeanLayer < nnet.layer.Layer
%     properties
%         Name
%     end

    methods
        function layer = MeanLayer(args)
             arguments
                args.Name = "";
                args.NumInputs = 1;
            end

            % Set layer properties.
            layer.Name = args.Name;
            layer.NumInputs =  args.NumInputs;
%             layer.InputNames = cell(layer.NumInputs,1);
%             for i = 1:layer.NumInputs
%                 layer.InputNames{i} = ['in' num2str(i)];
%             end

        end

        function Z = predict(layer, varargin)
            Xcell = varargin(1:end/2); 
            inputs = varargin(end/2+1:end); 

            Z = Xcell{1}.*any(inputs{1}~=0);
            count = any(inputs{1}~=0);
            for i =2:length(Xcell)
                Z = Z + Xcell{i}.*any(inputs{i}~=0);
                count = count +any(inputs{i}~=0);
            end
            Z = Z./(count+.01);
% 
%             keyboard
% 
%         Z = X;

        end

    end
end