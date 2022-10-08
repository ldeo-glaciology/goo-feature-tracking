% Calibrate



[x1,y1] = ginput(1);
[x2,y2] = ginput(1);
scale = 0.3/hypot((x2-x1),(y1-y2)); %X cm/pixels   (if using a 10cm long calibration stick).
