function [gradients, state, lossPredict, sparseLoss] = modelGradients(dlnet, dlX, dlY, sparsity)


% [weights, ~] = forward(dlnet, dlX*0+1);

[dlYPred,state] = forward(dlnet, dlX);

weights = dlnet.Learnables(1,3).Value{1}; % dlnet.layerGraph.Layers(2).weights;%
% sum(abs(weights),'all')
% 


lossPredict = 1*sum(abs(dlYPred- dlY), 'all')/numel(dlYPred);

% lossPredict = 1*sum((abs(dlYPred- dlY)),'all')/numel(dlYPred);
% sparseLoss = .0001*sparsity*sum( (abs(weights + 0.0000001).^.2),'all')/numel(dlYPred);

sparseLoss = .1*sum( sum(( abs(weights) + 0.0000000000000001).^(.1),2 ) - 1,'all')/numel(dlYPred);

% /numel(dlYPred);

loss = lossPredict + sparseLoss;
gradients = dlgradient(loss, dlnet.Learnables);

% loss = double(gather(extractdata(loss)));

lossPredict = double(gather(extractdata(lossPredict)));
% sparseLoss = double(gather(extractdata(sparseLoss)));

if rand(1) > .95

figure(3)
ind = randi(size(dlY,2));
predRobotPoints = double(gather(extractdata(dlYPred(:, ind))));
RobotPoints = double(gather(extractdata(dlY(:, ind))));
HumanPoints = double(gather(extractdata(dlX(:, ind))));
 hold off
scatter(RobotPoints(1:end/2), RobotPoints(end/2+1:end)); hold on
scatter(predRobotPoints(1:end/2), predRobotPoints(end/2+1:end))
scatter(HumanPoints(1:end/2), HumanPoints(end/2+1:end)); hold on
drawnow
end


end