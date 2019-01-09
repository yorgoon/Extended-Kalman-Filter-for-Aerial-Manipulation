function video_gen2(tsave, xsave, S, filename, target_fps, Fmat)

fv = stlread('quadrotor_model/quadrotor_base.stl');
% fv = stlread('quadrotor_model/test1.stl');
fig = figure(1);
grid on
hold on
Q = FramePlot2(tsave(1), xsave(1,:), S, Fmat(1,2:4), fv);
% axis([-1 11 -1.5 2.5 -2 2])
% axis([-1+min(xsave(:,1)) 1+max(xsave(:,1)) -0.5+min(xsave(:,2)) 0.5+max(xsave(:,2)) -1+min(xsave(:,3)) 1+max(xsave(:,3))])
set(gcf,'Renderer','OpenGL')
v = VideoWriter(filename);

v.FrameRate = target_fps;

open(v)

given_fps = 1/(tsave(2)-tsave(1));

skip_interval = floor(given_fps/target_fps);

for i=2:skip_interval:length(xsave(:,1))
    Q.UpdatePlot(tsave(i), xsave(i,:), Fmat(i,2:4))
    F = getframe(fig);
    writeVideo(v,F)
end
hold off
close(v)