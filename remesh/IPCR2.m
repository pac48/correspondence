function [line, lineD] = IPCR2(w, numPoints, width, cyclic)

line = zeros(numPoints, 3);
lineD = zeros(numPoints, 3);
alpha = linspace(0, 1, numPoints)';
numBasis = length(w)/3;

if ~cyclic
    centers = linspace(-.1, 1.1,numBasis);
    basisLine = BasisFuncs.radialBasis(alpha, centers, width);
    basisLineD = BasisFuncs.radialBasisD(alpha, centers, width);
else
    assert(numBasis==3, 'only three weights for radial')
    basisLine = [cos(2*pi*alpha) sin(2*pi*alpha) ones(length(alpha),1)];
    basisLineD = [-sin(2*pi*alpha) cos(2*pi*alpha) zeros(length(alpha),1)];
%     Ay = [cos(2*pi*alpha) sin(2*pi*alpha) ones(length(alpha),1)];
%     Az = ones(length(alpha),3);
end

for i =1:3
    line(:,i) = basisLine*w((1:numBasis) + (i-1)*numBasis);
end
for i =1:3
    lineD(:,i) = basisLineD*w((1:numBasis) + (i-1)*numBasis);
end

end