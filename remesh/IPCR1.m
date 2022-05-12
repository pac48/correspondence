function [Ax, Ay, Az, bx, by, bz, Aeq, beq] = IPCR1(points, initLine, line0, line1, lineD0, lineD1, numBasis, width, cyclic)

numPoints = size(initLine,1);
line = initLine;

centers = linspace(-.1, 1.1,numBasis);

kd = KDTree(line);
[idxs, ~] = nn(kd, points);
% sort verts in line order
[~,order] = sort(idxs);
idxs = idxs(order);
points = points(order,:);

alpha = idxs./numPoints;
basis = BasisFuncs.radialBasis(alpha, centers, width);


if ~cyclic
%     A = blkdiag(basis, basis, basis);
%     b = reshape(points, [], 1);

    Ax = basis;
    Ay = basis;
    Az = basis;

    bx = points(:,1);
    by = points(:,2);
    bz = points(:,3);

    beq = zeros(length(line0)+length(line1),1);
    beq(1:length(line0)) = line0;
    beq(length(line0)+1:length(line0)+length(line1)) = line1;

    beqD = zeros(length(lineD0)+length(lineD1),1);
    beqD(1:length(lineD0)) = lineD0;
    beqD(length(lineD0)+1:length(lineD0)+length(lineD1)) = lineD1;

    basisEq = BasisFuncs.radialBasis([0;1], centers, width);
    Aeq = [blkdiag(basisEq(1, :), basisEq(1, :),basisEq(1, :))
        blkdiag(basisEq(2, :),basisEq(2, :),basisEq(2, :))];

    basisEqD = BasisFuncs.radialBasisD([0;1], centers, width);
    AeqD = [blkdiag(basisEqD(1, :), basisEqD(1, :),basisEqD(1, :))
        blkdiag(basisEqD(2, :),basisEqD(2, :),basisEqD(2, :))];

    Aeq = cat(1, Aeq, AeqD);
    beq = cat(1, beq, beqD);

else
%     A = blkdiag(basis, basis, basis);
    
%     Ax = basis;
%     Ay = basis;
    Ax = [cos(2*pi*alpha) sin(2*pi*alpha) ones(length(alpha),1)];
    Ay = [cos(2*pi*alpha) sin(2*pi*alpha) ones(length(alpha),1)];
    Az = [cos(2*pi*alpha) sin(2*pi*alpha) ones(length(alpha),1)];
%     Az = ones(length(alpha),3);

    bx = points(:,1);
    by = points(:,2);
    bz = points(:,3);

    Aeq = [];
    beq = [];

% %     beq = zeros(3,1);
% % 
% %     beqD = zeros(3,1);
% %    
% %     basisEq = BasisFuncs.radialBasis([0;1], centers, width);
% %     Aeq = blkdiag(basisEq(1, :), basisEq(1, :),basisEq(1, :))-blkdiag(basisEq(2, :),basisEq(2, :),basisEq(2, :));
% % 
% %     basisEqD = BasisFuncs.radialBasisD([0;1], centers, width);
% %     AeqD = blkdiag(basisEqD(1, :), basisEqD(1, :),basisEqD(1, :))-blkdiag(basisEqD(2, :),basisEqD(2, :),basisEqD(2, :));
% % 
% %     Aeq = cat(1, Aeq, AeqD);
% %     beq = cat(1, beq, beqD);
% % 
% %     % require y(0) = 0
% %     basisEq = BasisFuncs.radialBasis(0, centers, width);
% %     tmp = cat(2, basisEq*0, basisEq, basisEq*0);
% %     Aeq = cat(1, Aeq, tmp);
% %     beq = cat(1, beq, 0);
% % 
% %     basisEq = BasisFuncs.radialBasis(.5, centers, width);
% %     tmp = cat(2, basisEq*0, basisEq, basisEq*0);
% %     Aeq = cat(1, Aeq, tmp);
% %     beq = cat(1, beq, 0);
% % 
% %         basisEq = BasisFuncs.radialBasis(.25, centers, width);
% %     tmp = cat(2, basisEq, basisEq*0, basisEq*0);
% %     Aeq = cat(1, Aeq, tmp);
% %     beq = cat(1, beq, 0);
% % 
% %         basisEq = BasisFuncs.radialBasis(.75, centers, width);
% %     tmp = cat(2, basisEq, basisEq*0, basisEq*0);
% %     Aeq = cat(1, Aeq, tmp);
% %     beq = cat(1, beq, 0);

end

end