%% This m-file is to plot variables in dataset.mat and fit a linear regression model

rand_x=rand(100,1);%random data
rand_y=rand(100,1);%random data

sz=100;%marker size
figure('Color',[1 1 1])%figure with white background instead of grey
scatter(rand_x,rand_y,sz,'.k')%scatter plot
mdl=fitlm(rand_x,rand_y);%model
hold %hold data on plot so it doesn't overwrite
plot(mdl,'Marker','none')%plot the model data 
xlabel('data (a.u.)')
ylabel('data (a.u.)')
title('Random Data')
% xlim([0 1]);
% ylim([3 7]);
x=xlim;
y=ylim;
txt=['R^2 =' num2str(mdl.Rsquared.Adjusted,'%4.3f')];%puts text in plot with adjusted r^2
text((x(1,1)+((x(1,2)-x(1,1))*0.05)),(y(1,2)-((y(1,2)-y(1,1))*0.05)),txt);
legend('off') 
