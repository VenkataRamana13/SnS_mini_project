filename = 'team15.wav';
[y, Fs] = audioread(filename);
l = length(y);
n = 1:l; 

figure()
plot(n,y, 'r');
ylabel('y(t)');
xlabel('t');
title('signal read from wav file');
