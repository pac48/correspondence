classdef SparseLinearLayer < nnet.layer.Layer

    properties(Learnable)
        weights 
    end

    methods
        function layer = SparseLinearLayer(inputSize)
            layer.weights = zeros(inputSize);
        end

        function Z = predict(layer, X)
            
% 
%              Z = layer.weights(:, inds)*X(inds);
%              X = extractdata(X);
            
%              Z = dlarray(zeros(size(layer.weights,1),size(X,2) ));
%              for b = 1:size(Z,2)
%                 inds = (X(:,b)~=0);
%                 Z(:,b) = layer.weights(:, inds)*X(inds, b);
%              end

        Z = layer.weights*X;


%             if ~isa(X,'dlarray')
%                 X = dlarray(X,'CB');
%             end
%             X = extractdata(X);
%             if ~isa(X,'gpuArray')
%                 X = gpuArray(X);
%             end

%             layer.structHandle.structure.weightsInv = gpuArray(inv(gather(layer.weights)));
%             Z = layer.structHandle.structure.weightsInv*X;
%             Z = dlarray(Z,'CB');
%             Z = layer.weights*X;

        end

%         function [dLdX, dLdW] = backward(layer, X, Z, dLdZ, ~)
%             % (Optional) Backward propagate the derivative of the loss
%             % function through the layer.
%             % points3d_bxfx9, points2d_bxfx6 pointsdirect_bxfx1, colors_bxfx3d
%             % Inputs:
%             %         layer   - Layer to backward propagate through
%             %         X       - Layer input data
%             %         Z       - Layer output data
%             %         dLdZ    - Derivative of loss with respect to layer
%             %                   output
%             %         dLdSout - (Optional) Derivative of loss with respect
%             %                   to state output
%             %         memory  - Memory value from forward function
%             % Outputs:
%             %         dLdX   - Derivative of loss with respect to layer input
%             %         dLdW   - (Optional) Derivative of loss with respect to
%             %                  learnable parameter
%             %         dLdSin - (Optional) Derivative of loss with respect to
%             %                  state input
%             %             keyboard
% 
% %             dLdZ = reshape(dLdZ, size(dLdZ,1),1,[]);
%             X = reshape(X, 1, size(X,1),[]);
% 
%              inds = (X~=0);
%             
%             weightsInv = layer.structHandle.structure.weightsInv;
%             dZdX = weightsInv;
%             dLdX = dZdX.*dLdZ;
% 
%             invGrad = -weightsInv*ones(size(layer.weights))*weightsInv;   
%             dZdW = invGrad.*X;
% 
%             dLdW = dLdZ.*dZdW;
% 
%             dLdW = mean(dLdW ,3);
% 
%         end


    end
end