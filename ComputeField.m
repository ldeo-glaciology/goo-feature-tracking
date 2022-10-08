% compute field

distance = hypot((x_1-x_2),(y_1-y_2));
x_dist = x_2-x_1;
y_dist = y_2-y_1;
dt= (t2-t1)*24*60*60;
%     velocity_qpoints = [(x_1+x_2)/2;(y_1+y_2)/2;x_dist*scale/dt;y_dist*scale/dt]';
resolution = cam.resolution;
resolution_x = str2num(resolution(1:3));
resolution_y = str2num(resolution(end-2:end));
if ~exist('scale','var')
scale = 8.467980142054411e-04;
msgbox('Using default calibration ')
% error(['You need to do the calibration step before computing the velcity field!'])
end
[meshgridx,meshgridy] = meshgrid(1:resolution_x,1:resolution_y);
velocity_cpoints= griddata(x_1,y_1, distance*scale/dt,meshgridx,meshgridy);


figure(2)
clf
contourf([1:resolution_x]*scale*100,[1:resolution_y]*scale*100,velocity_cpoints*100);
axis ij
colorbar
hold on;
quiver(x_1*scale*100,y_1*scale*100,x_dist*scale/dt,y_dist*scale/dt,'b')
title('Velocity Field in cm/s')
xlabel '[cm]'
ylabel '[cm]'


figure(99) 
hold on
subplot(1,2,1)
contourf(velocity_cpoints);


