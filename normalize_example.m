%% Normalization code

%load dataset.mat into workspace
%the dataset is an example from boat movement sampled at 50 Hz

% Example column headers for 'dataset' variable 
%1: Times, 2: Accel LR, 3: AccelFWD, 4: AccelUp, 5: AccelNet,
%6: Gyro Pitch, 7: Gyro Roll, 8: Gyro Yaw, 9: Distance, 10: Velocity

%Normalize one stroke from AccelFWD data

fwdaccel_stroke1=dataset(799:820,3);%example data from 1 stroke
[rows,~]=size(fwdaccel_stroke1);%determine number of rows in array
data_length=linspace(1,100,length(fwdaccel_stroke1(1:rows)));%create new array of 100 rows, 1 column
new_length=1:100;%new array length (typically 100%)
fwdaccel_stroke1_norm=spline(data_length,fwdaccel_stroke1,new_length)';%normalized array

% check waveforms using plots
figure('Color',[1 1 1])
subplot(211)
plot(fwdaccel_stroke1)
xlabel('Sample Number')
ylabel('Acceleration (g)')
title('Raw')
subplot(212)
plot(fwdaccel_stroke1_norm)
xlabel('Sample Number')
ylabel('Acceleration (g)')
title('Normalized')
