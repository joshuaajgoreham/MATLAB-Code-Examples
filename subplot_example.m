%% Plot variables

%load dataset.mat into workspace
%the dataset is an example from boat movement sampled at 50 Hz

% Example column headers for 'dataset' variable 
%1: Times, 2: Accel LR, 3: AccelFWD, 4: AccelUp, 5: AccelNet,
%6: Gyro Pitch, 7: Gyro Roll, 8: Gyro Yaw, 9: Distance, 10: Velocity

figure('Color',[1 1 1])
set(gcf,'WindowState','maximized')
subplot(231)
plot(dataset(:,1),dataset(:,3),'k')%plot FWD Accel vs. Time
xlabel('Time (s)')
ylabel('Acceleration (g)')
title('FWD Acceleration')
ylim([-2 2]);
yline(0,'--r')

subplot(232)
plot(dataset(:,1),dataset(:,2),'k')%plot LR Accel vs. Time
xlabel('Time (s)')
ylabel('Acceleration (g)')
title('LR Acceleration')
ylim([-2 2]);
yline(0,'--r')

subplot(233)
plot(dataset(:,1),dataset(:,4),'k')%plot UP Accel vs. Time
xlabel('Time (s)')
ylabel('Acceleration (g)')
title('UP Acceleration')
ylim([0 2]);
yline(1,'--r')

subplot(234)
plot(dataset(:,1),dataset(:,6),'k')%plot Pitch vs. Time
xlabel('Time (s)')
ylabel('Angular Velocity (deg/s)')
title('Pitch')
%ylim([0 2]);
yline(0,'--r')

subplot(235)
plot(dataset(:,1),dataset(:,7),'k')%plot Roll vs. Time
xlabel('Time (s)')
ylabel('Angular Velocity (deg/s)')
title('Roll')
%ylim([0 2]);
yline(0,'--r')

subplot(236)
plot(dataset(:,1),dataset(:,8),'k')%plot Yaw vs. Time
xlabel('Time (s)')
ylabel('Angular Velocity (deg/s)')
title('Yaw')
%ylim([0 2]);
yline(0,'--r')