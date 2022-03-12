filename = '115.csv';
Y = readmatrix(filename);
y = Y(:,2);

idx = 1:3000;

figure()
plot(y(1:3000,1)); 
ylabel('y(t)');
xlabel('t');
title('The signal read from the csv file');
%approximate period = 330 samples
%sampling rate = 44/0.122
%time period = 330*(1/sampling_rate) = 0.915

