y = zeros(2000,1);
for t = 0:1:2000
    if (t < 1000) 
        w = 1450*(t/1000) + 50; 
    else 
        w = 2950 - 1450*(t/3000); 
    end
    y(t+1) = sin(2*pi*w*(t/1000)); 
end

l = length(y);
n = 1:l;
Fs = 1000;

figure()
plot(n/Fs,y, 'r');
ylabel('y(t)');
xlabel('t(in secs)');
title('constructed signal');
