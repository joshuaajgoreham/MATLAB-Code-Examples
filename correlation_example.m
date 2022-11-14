%% This m-file is to plot variables in dataset.mat and find correlations

rand_x=rand(100,1);
rand_y=rand(100,1);

sz=100;
figure('Color',[1 1 1])
scatter(rand_x,rand_y,sz,'.k')
mdl=fitlm(rand_x,rand_y);
hold
plot(mdl,'Marker','none')
xlabel('data (a.u.)')
ylabel('data (a.u.)')
title('Random Data')
% xlim([0 1]);
% ylim([3 7]);
x=xlim;
y=ylim;
txt=['R^2 =' num2str(mdl.Rsquared.Adjusted,'%4.3f')];
text((x(1,1)+((x(1,2)-x(1,1))*0.05)),(y(1,2)-((y(1,2)-y(1,1))*0.05)),txt);
legend('off') 
