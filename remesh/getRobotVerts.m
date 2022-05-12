function [verts, TBase, TEnd, robot, vertsInds]  = getRobotVerts(name)

if strcmp(name, 'yumi')
    addpath('Yumi')
    robot = Robot();
    [verts, TBase, TEnd, vertsInds]  = robot.getRobotVerts();
elseif strcmp(name, 'sawyer')
    addpath('Sawyer')
    robot = Robot();
    [verts, TBase, TEnd, vertsInds]  = robot.getRobotVerts();
else
    assert(0,'ony yumi and sawyer are supported')
end

end