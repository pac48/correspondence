close all

width = 20;
height  = 10;
[X,Y] = meshgrid(1:width, 1:height);

D = (X-0*width/2).^2+Y.^2+500 - 5*X.*Y;

% load('data\D.mat')
surf(D);
% heatmap(D);
hold on

goalFunc = @(state) state(1) == 1;
% expandFunc = @(state) state + cat(2, eye(length(state)), -eye(length(state)) );
expandFunc = @(state) state + cat(2, -eye(length(state)) );

path = search(D,expandFunc, goalFunc);
ind = find(path(1,:) == size(D,1),1);
for i = ind:-1:1
    val = D(path(1,i), path(2,i));
    plot3(path(2,i), path(1,i), val, 'Marker','.','MarkerSize',20);
end