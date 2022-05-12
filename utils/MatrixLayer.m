classdef MatrixLayer < nnet.layer.Layer &  GlobalStruct & nnet.layer.Formattable

    properties(Learnable)
        weights 
    end

    methods
        function layer = MatrixLayer(inputSize)
%                         layer.weights = gpuArray(eye(inputSize));

%                         layer.weights = gpuArray(eye(inputSize));
layer.weights = eye(inputSize);
%                         inds = datasample(1:inputSize,inputSize,'Replace',false);
%                         layer.weights = layer.weights(:,inds);

                        %             layer.weights = gpuArray(rand(inputSize,inputSize));
        end

        function Z = predict(layer, X)
     
            if ~isa(X,'dlarray')
                X = dlarray(X,'CB');
            end
            X = extractdata(X);
            if ~isa(X,'gpuArray')
                X = gpuArray(X);
            end

            layer.structHandle.structure.weightsInv = gpuArray(inv(gather(layer.weights)));
            Z = layer.structHandle.structure.weightsInv*X;
            Z = dlarray(Z,'CB');
%             Z = layer.weights*X;

        end

        function [dLdX, dLdW] = backward(layer, X, Z, dLdZ, ~)
            % (Optional) Backward propagate the derivative of the loss
            % function through the layer.
            % points3d_bxfx9, points2d_bxfx6 pointsdirect_bxfx1, colors_bxfx3d
            % Inputs:
            %         layer   - Layer to backward propagate through
            %         X       - Layer input data
            %         Z       - Layer output data
            %         dLdZ    - Derivative of loss with respect to layer
            %                   output
            %         dLdSout - (Optional) Derivative of loss with respect
            %                   to state output
            %         memory  - Memory value from forward function
            % Outputs:
            %         dLdX   - Derivative of loss with respect to layer input
            %         dLdW   - (Optional) Derivative of loss with respect to
            %                  learnable parameter
            %         dLdSin - (Optional) Derivative of loss with respect to
            %                  state input
            %             keyboard

            dLdZ = reshape(dLdZ, size(dLdZ,1),1,[]);
            X = reshape(X, 1, size(X,1),[]);
            
            % calc dZdX
            weightsInv = layer.structHandle.structure.weightsInv;
            dZdX = weightsInv;
            dLdX = dZdX.*dLdZ;
            dLdX = sum(dLdX,1);
            dLdX = reshape(dLdX, size(dLdZ,1), []);

            % calc dZdw
            %  the equation is :  Z = inv((layer.weights))*X;

            invGrad = -weightsInv*ones(size(layer.weights))*weightsInv;   
            dZdW = invGrad.*X;
    
% %             dZdWNumeric = zeros(size(invGrad,1),size(invGrad,2),size(Z,1));
% %             base = inv((layer.weights))*X(1, : ,1)';
% %             delta = 0.001;
% %             for i =1:size(layer.weights,1)
% %                 for j =1:size(layer.weights,2)
% %                     offset = zeros(size(layer.weights));
% %                     offset(i,j) = delta; 
% %                     invGradNumeric(i,j,:) = (1/delta)*(inv((layer.weights + offset))*X(1, : ,1)'- base); 
% %                 end
% %             end
% %             dLdWNumeric =  sum(invGradNumeric.*reshape(dLdZ(:,:,1),1,1,[]),3);

            dLdW = dLdZ.*dZdW;
%             dLdW = sum(dLdW ,3);
            dLdW = mean(dLdW ,3);

        end


    end
end