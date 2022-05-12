addpath('correspondenceNet\')
addpath('kdtree\toolbox\');
bag = rosbag('bag/exerciseSyncYumi.bag');
bagImages = select(bag, Topic='/camera/color/image_raw');
imageMsgs = readMessages(bagImages, 'DataFormat', 'struct');

% correspondenceNet = CorrespondenceNet('yumi');
correspondenceNet = CorrespondenceNet('sawyer');
robot = Robot();

inds = floor(linspace(980, 2000, 250));
cam = webcam();

%%
% close all
robot.setJoints(robot.home);
for n = inds
%         if n < 1630+200
%     continue
%         end
    img = rosReadImage(imageMsgs{n});

%     while 1
%         img = cam.snapshot();
%         img = imresize(img,.5);
    subplot(1,2,1)
    image(img)
    drawnow

    subplot(1,2,2); hold off
    vertsPred = correspondenceNet.predict(img, -.6);
    if isempty(vertsPred)
        continue
    end
    plot3(vertsPred(:,1), vertsPred(:,2), vertsPred(:,3), 'LineStyle','none','Marker','.','MarkerSize',10, 'Color','r');


    qd = 1;
    count = 0;
    while norm(qd) > .01 && count < 100
            JVerts = robot.getVertJacobians(vertsPred');
        curVerts = robot.forwardRender();
        curArmVerts = curVerts(:,robot.armInds);
%         if mod(count,20)==0
%             weights = (1:3*size(curArmVerts,2))'./size(curArmVerts,2);
%         end
        count = count+1;
        A = vertcat(JVerts{:});
        b = (reshape(vertsPred',[],1) - reshape(curArmVerts,[],1));
        % damped motion
        q = robot.getJoints();
        b = cat(1, b, .00*(robot.home-q));
        A = cat(1, A, .2*eye(robot.numJoints));

        qd = .1*lsqlin(A,b);
        robot.setJoints(q + qd);
        
    end
%     if count==100
%         robot.setJoints(robot.home);
%     end
    subplot(1,2,2); hold on
    robot.plotObject
    view([1 0 0])
    zlim([-1 1.3])
    xlim([-1 1])
    ylim([-1 1]+.5)
    pause(0.000001)

%     end

end
