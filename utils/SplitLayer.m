classdef SplitLayer < nnet.layer.Layer% & nnet.layer.Formattable

    methods
        function layer = SplitLayer(args)
             arguments
                args.Name = "";
                args.NumOutputs = 1;
            end

            % Set layer properties.
            layer.Name = args.Name;
            layer.NumOutputs =  args.NumOutputs;


        end

        function varargout = predict(layer, X)
            
            varargout = cell(1, layer.NumOutputs);
            X = reshape(X, layer.NumOutputs, 2, []);
            
            for i = 1:layer.NumOutputs
               varargout{i} = reshape(X(i, :, :), 2, []);
            end

        end

    end
end