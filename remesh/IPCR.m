function [line, lineD] = IPCR(points, initLine, line0, line1, lineD0, lineD1)
% non-cyclic iterative path coordinateregreesion

if isempty(initLine)
    numPoints = 500;
    initLine = zeros(numPoints, 3);
    
    for i = 1:3
        initLine(:,i) = linspace(line0(i), line1(i),numPoints);
    end
end

numBasis = 20;
width = .5;
numPoints = size(initLine, 1);

[Ax, Ay, Az, bx, by, bz, Aeq, beq] = IPCR1(points, initLine, line0, line1, lineD0, lineD1, numBasis, width, false);

A = blkdiag(Ax, Ay, Az);
b = cat(1, bx, by, bz);

w = lsqlin(A,b,[],[],Aeq,beq);


[line, lineD] = IPCR2(w, numPoints, width, false);

end