function [vertsModel] = ConvertXYZCoordinates(vertsModelPC, linePC, line, lineD)

kd = KDTree(linePC);
[idxs, ~] = nn(kd, vertsModelPC);

% [~,order] = sort(idxs);
% idxs = idxs(order);
% vertsModelPC = vertsModelPC(order,:);

vertsModel = vertsModelPC*0;

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
    
    R = Rall(:,:, idxs(i));

    vertsModel(i,:) = (inv(R)*(vertsModelPC(i,:) - linePC(idxs(i), :) )')';
    vertsModel(i,:) = vertsModel(i,:) + line(idxs(i), :);

end


end