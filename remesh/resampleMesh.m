function verts  = resampleMesh(verts, num)

area = 1:size(verts,1)/3;
for i = 1:3:size(verts,1)
    triangle = verts(i+(0:2),:);
    area(floor((i-1)/3)+1) = norm(cross(triangle(2,:)-triangle(1,:), triangle(3,:)-triangle(1,:)))+0.0000000000001;
end
cumArea = cumsum(area);
cumArea = cumArea./cumArea(end);


samples = floor(interp1(cumArea, 1:length(cumArea), rand(num,1), 'linear', 'extrap'));

newVerts = [];

for i = 1:length(samples)
    ind = (samples(i)-1)*3+1;
    ind = max(ind, 1);
    triangle = verts(ind+(0:2),:);
    u = rand(1);
    v = min(rand(1), 1-u);
    vert = triangle(1,:) + (triangle(2,:) - triangle(1,:))*u + (triangle(2,:) - triangle(1,:))*v;
    newVerts = cat(1,newVerts, vert);
end

verts = newVerts;

end