


% function[]=FeatureTracking
clear all
close all
%Connect to the webcam
camList = webcamlist
cam = webcam(2)

preview(cam);

figure(99)
set(gcf,'Pos',[     0.0138    0.1218    1.5144    0.6408]*1e3)



B1callback = 't1 = now; img1 = snapshot(cam); figure(1); subplot(1,2,1); image(img1); title([''Photo 1 taken @'' datestr(t1,''HH:MM:SS.FFF AM'')]); axis equal; axis tight';
B2callback = 't2 = now; img2 = snapshot(cam); figure(1); subplot(1,2,2); image(img2); title([''Photo 2 taken @'' datestr(t2,''HH:MM:SS.FFF AM'')]); axis equal; axis tight';
B1 = uicontrol('String', 'Take photo 1', 'Callback',B1callback,'Pos',[400 20 120 20]);
B2 = uicontrol('String', 'Take photo 2', 'Callback',B2callback,'Pos',[1200 20 120 20]);
B3 = uicontrol('String', 'Calibration', 'Callback','Calibrate','Pos',[20 300 120 20]);


B3 = uicontrol('String', 'Pick Points (press enter when finished) ', 'Callback','PickPoints;','Pos',[650 60 200 30]);

B4 = uicontrol('String', 'Compute velocity field', 'Callback','ComputeField;','Pos',[650 20 200 30]);

B5 = uicontrol('String', 'Restart everything', 'Callback','FeatureTracking','Pos',[20 350 120 20]);
