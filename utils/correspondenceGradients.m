function [gradients, state, loss, Di] = correspondenceGradients(dlnet, dlX, dlY, numSegments, numPoints)
[dlYPred,state] = forward(dlnet, dlX);


% dlY: points segs XYZ time
dlYShape = reshape(dlY, numPoints, numSegments, 3, []);
% dlYShape = permute(dlYShape, [1 3 2, 4]);

dlYPredShape = reshape(dlYPred, numPoints, numSegments, 3 , []);
for i = 1:numSegments
    Di(i) = sum( (dlYShape(:,i,:,:) - dlYPredShape(:,i,:,:)).^2, 'all'); 
end
% Di = sum( abs(dlYShape - dlYPredShape), 2); 

loss = 1*sum(Di)/numel(dlY);

gradients = dlgradient(loss, dlnet.Learnables);

loss = double(gather(extractdata(loss)))



if rand(1) > .95

tmp = double(gather(extractdata(dlY)));
tmp = reshape(tmp, numPoints, numSegments, 3 , []);

tmpPred = double(gather(extractdata(dlYPred)));
tmpPred = reshape(tmpPred, numPoints, numSegments, 3 , []);

tmpInput = double(gather(extractdata(dlX)));
tmpInput = reshape(tmpInput, numPoints, 3 , []);

    hold off
    timeInd = randi(size(tmp,4));
    scatter3(reshape(tmp(:,:,1,timeInd),[],1), ...
        reshape(tmp(:,:,2,timeInd),[],1),...
        reshape(tmp(:,:,3,timeInd),[],1),'blue'); hold on
     scatter3(reshape(tmpPred(:,:,1,timeInd),[],1), ...
        reshape(tmpPred(:,:,2,timeInd),[],1),...
        reshape(tmpPred(:,:,3,timeInd),[],1),'black'); hold on

     scatter3(reshape(tmpInput(:,1,timeInd),[],1), ...
        reshape(tmpInput(:,2,timeInd),[],1),...
        reshape(tmpInput(:,3,timeInd),[],1),'red'); hold on

%     keyboard
axis equal
pause(.0001)
end

end