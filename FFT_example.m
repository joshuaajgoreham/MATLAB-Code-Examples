%% Fast Fourier Transform code

%load dataset.mat into workspace
%the dataset is an example from boat movement sampled at 50 Hz

% Example column headers for 'dataset' variable 
%1: Times, 2: Accel LR, 3: AccelFWD, 4: AccelUp, 5: AccelNet,
%6: Gyro Pitch, 7: Gyro Roll, 8: Gyro Yaw, 9: Distance, 10: Velocity

% FFT for AccelFWD data

[rows,~]=size(dataset(:,3));

NFFT=rows; %number of points used in the fft
Y = fft(dataset(:,3), NFFT); % compute Fourier transform
n = size(dataset(:,3),1)/2; % 2nd half are complex conjugates
amp_spec = abs(Y)/n; % absolute value and normalize
Fsampling=50; %Hz

Fvalues=Fsampling*(0:NFFT/2-1)/NFFT;	 	 

plot(Fvalues,amp_spec(1:NFFT/2),'b','LineSmoothing','on','LineWidth',1);	 	 
title('One Sided Power Spectral Density');	 	 
xlabel('Frequency (Hz)')	 	 
ylabel('Amplitude (v)');