function [pointsRot, lineTransformed, pointsApprox] = ConvertPathCoordinates(points, line, lineD)

kd = KDTree(line);
[idxs, ~] = nn(kd, points);

[~,order] = sort(idxs);
idxs = idxs(order);
points = points(order,:);

pointsRot = points;
pointsApprox = points;

numPoints = size(line,1);
lineTransformed = zeros(size(line,1),1);
pathLength = zeros(size(line,1),1);
for i = 2:length(pathLength)
    pathLength(i) = pathLength(i-1) + 1/numPoints*norm(lineD(i,:));
end
lineTransformed(:,3) = pathLength;

R = eye(3);
Rall = zeros(3,3, length(line));

for i = 1:size(Rall,3)
    zUp = [0,0,1];
    tmp = lineD(i, :);
    tmp = (R*tmp')';
    tmp = tmp./(norm(tmp)+.0001);
    perpVec = cross(tmp, zUp);
    perpVec = perpVec./norm(perpVec);
    angle = -acos(dot(zUp, tmp));
    R = rotationVectorToMatrix(perpVec*angle)*R;
    Rall(:,:,i) = R;
end


for i = 1:1:length(idxs)

% R = rotationVectorToMatrix(perpVec*angle);
    R = Rall(:,:, idxs(i));

    pointsRot(i,:) = (R*(points(i,:) - line(idxs(i),:) )')';% + (R*line(idxs(i),:)')';

    pointsRot(i,3) = pathLength(idxs(i));

    pointsApprox(i,:) = (inv(R)*(pointsRot(i,:)'.*[1;1;0]))' + line(idxs(i),:);%;line(idxs(i),:); 
end


end