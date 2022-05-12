function [lines, linesD] = IPCRRadial(points, centralLine, initLines)
% Cyclic iterative path coordinateregreesion

numSegments = 40;
numPoints = 200;
numBasis = 20;
width = .5;



kd = KDTree(centralLine);
sampleLine(:, 3) = linspace(centralLine(1, 3), centralLine(end, 3), numSegments);
[inds, ~] = nn(kd, sampleLine);

% inds = floor(linspace(1, numPoints, numSegments));
segments = centralLine(inds,:);
kd = KDTree(segments);
[idxs, ~] = nn(kd, points);

lines = cell(numSegments, 1);
linesD = cell(numSegments, 1);

if isempty(initLines)
    
    initLines = cell(numSegments, 1);

    for n = 1:numSegments
        pointsn = points(idxs==n,:);
        if size(pointsn,1)==0
            pointsn = .01*rand(5,3);
            pointsn(:,3) = segments(n, 3);
        end
        center = mean(pointsn(:,1:2), 1); 
        radius = .01+mean(sqrt(sum((pointsn(:,1:2)-center).^2,2)), 1);
        
        height = mean(pointsn(:,3));
        
        theta = linspace(0, 2*pi, numPoints+1);
        theta = theta';%(1:end-1)';
        
        initLine2 = [center(1)+radius*cos(theta) center(2)+radius*sin(theta) height+theta*0];
        
        initLines{n} = initLine2; 
        
    end

end

% A = [];
% 

numBasis = 3;

A = zeros(size(points,1)*3 + numPoints*(numSegments-1)*2 + 1000, numBasis*3*numSegments);
Aeq = [];
b = zeros(size(A,1), 1);
beq = [];



AxLineOld = [];
AyLineOld = [];

indRow = 0;
indCol = 0;

w = [];

for n = 1:numSegments
    
    pointsn = points(idxs==n,:);
    if size(pointsn,1)==0
            pointsn = .01*rand(5, 3);
            pointsn(:,3) = segments(n,3);
        end
    pointsn(:,3) = segments(n,3);
        

    [Axn, Ayn, Azn, bxn, byn, bzn, Aeqn, beqn] = IPCR1(pointsn, initLines{n}, [], [], [], [], numBasis, width, true);

    An = blkdiag(Axn, Ayn, Azn);
    bn = cat(1, bxn, byn, bzn);

    wn = lsqlin(An,bn);

    w = cat(1,w,wn);

%     An = An./length(bn);
%     bn = bn./length(bn); 

    A((1:size(An,1)) + indRow, (1:size(An,2)) + indCol) = An; 
    b((1:length(bn))+indRow) = bn; 
    indRow = indRow + size(An, 1);
    indCol = indCol + size(An, 2);

    continue

    [AxLine, AyLine] = IPCR1(initLines{n}, initLines{n}, [], [], [], [], numBasis, width, true);
%     
% AxLine = AxLine./size(AxLine,1);
%     AyLine = AyLine./size(AyLine,1); 

    if ~isempty(AxLineOld)


        scale = .01;

%         A(size(A,1)+(1:size(AxLine,1)), end-3*size(AxLine,2)+1 : end-2*size(AxLine,2)) = scale*AxLine;
        A((1:size(AxLine,1)) + indRow, (1:size(AxLine,2)) + indCol - 3*size(AxLine,2)) = scale*AxLine;
%         A(end-size(AxLineOld,1)+1:end, end - 6*size(AxLineOld,2)+1 : end-5*size(AxLineOld,2)) = -scale*AxLineOld;
        A((1:size(AxLineOld,1)) + indRow, (1:size(AxLineOld,2)) + indCol - 6*size(AxLineOld,2)) = -scale*AxLineOld;

        indRow = indRow + size(AxLine,1);


%         A(size(A,1)+(1:size(AyLine,1)), end-2*size(AyLine,2)+1 : end-1*size(AyLine,2)) = scale*AyLine;
%         A(end-size(AyLineOld,1)+1:end, end - 5*size(AyLineOld,2)+1 : end-4*size(AyLineOld,2)) = -scale*AyLineOld;
        A((1:size(AyLine,1)) + indRow, (1:size(AyLine,2)) + indCol - 2*size(AyLine,2)) = scale*AyLine;
        A((1:size(AyLineOld,1)) + indRow, (1:size(AyLineOld,2)) + indCol - 5*size(AyLineOld,2)) = -scale*AyLineOld;

        indRow = indRow + size(AyLine,1);

    end

    AxLineOld = AxLine;
    AyLineOld = AyLine;



Aeq = blkdiag(Aeq, Aeqn);
beq = cat(1, beq, beqn);


% scatter3(pointsn(:,1),pointsn(:,2),pointsn(:,3)); hold on
% scatter3(initLine2(:,1),initLine2(:,2),initLine2(:,3)); hold on
% axis equal
end
figure

A(indRow:end, :) = [];
b(indRow:end) = [];


% w = lsqlin(A,b,[],[],Aeq,beq);


for n = 1:numSegments
    [line, lineD] = IPCR2(w((1:numBasis*3) + numBasis*3*(n-1)), numPoints, width, true);
    
    line(:,3) = segments(n,3);
    plot3(line(:,1), line(:,2), line(:,3), 'Color','k','LineWidth',2); hold on
    lines{n} = line;
    linesD{n} = lineD;
end
axis equal

end