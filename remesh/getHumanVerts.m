function [verts, TBase, TEnd, human, vertsInds, vertsInds6000]  = getHumanVerts()

addpath(genpath('DAE'));
addpath('render/');

human = Human('female');

% human.boneRotations(:,:,6) = eul2rotm([0*pi/2 0 0])*[0.58916837	-0.55116802	0.59084243
% 0.79804611	0.51141560	-0.31871039
% -0.12650323	0.65929347	0.74116731];
% 
% human.boneRotations(:,:,7) = [0.71883053	0.63353086	0.28621918
% 0.0057927682	0.40624347	-0.91374648
% -0.69516122	0.65848672	0.28835028];


armBones = {'Bone_005','Bone_006','Bone_007'};

[verts, ~, ~, boneTransforms] = human.forwardRender();


baseBodyInd = find(   cellfun(@(x)strcmp(x,armBones{1}), human.boneNames), 1  );
endBodyInd = find(   cellfun(@(x)strcmp(x,armBones{end}), human.boneNames), 1  );

vertsInds = logical(human.controller.influences(human.controller.skin.vertOrder,1)*0);
for b = 1:size(human.controller.influences,2)
    if any(cellfun(@(x)strcmp(x,human.boneNames{b}), armBones))
        tmp = mean(reshape(human.controller.influences(human.controller.skin.vertOrder,b), 3,[]));
        tmp = repmat(tmp, 3,1);
        tmp = reshape(tmp, [], 1);
        vertsInds = vertsInds |  tmp > .2;
    end
end

vertsInds = find(vertsInds, 999999999999999);

vertsInds6000 = human.controller.skin.vertOrder(vertsInds);

verts = double(verts(:, vertsInds))';

TBase = double(boneTransforms(:, :, baseBodyInd));

TEnd = double(boneTransforms(:, :, endBodyInd));


TBase = TBase(:, [1 3 2 4]);
TEnd = TEnd(:, [1 3 2 4]);



end