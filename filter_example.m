%% Filter code

%load dataset.mat into workspace
%the dataset is an example from boat movement sampled at 50 Hz

% Example column headers for 'dataset' variable 
%1: Times, 2: Accel LR, 3: AccelFWD, 4: AccelUp, 5: AccelNet,
%6: Gyro Pitch, 7: Gyro Roll, 8: Gyro Yaw, 9: Distance, 10: Velocity

% 4th Order Low Pass Butterworth Filter for AccelFWD data

%Setting up the Butterworth Filter 4th Order Low Pass Filter at 6 Hz
Fs=50;
Fc=6;
n=4;
Wn=Fc/(Fs/2);
[b,a]=butter(n,Wn,'Low');
fwd_accel_filt=filtfilt(b,a,dataset(:,3));

%check the filtered data
close all
figure('Color',[1 1 1]);%makes the background of the plot white
plot(fwd_accel_filt);
hold
plot(dataset(:,3))
xlabel('Sample Number')
ylabel('Acceleration (g)')
clear Fc Fs Wn a b 
