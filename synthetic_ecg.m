filename = '115.csv';
Y = readmatrix(filename);
y = Y(:,2);

T = 0.915;
w0 = 2*pi/T; 
f0 = 1/T; 

a = zeros(100,1); 
b = zeros(100,1); 
a0 = 0; 
for k = 1:100
    for t = 530:1:860
        a(k) = a(k) + y(t)*cos(k*w0*(t*T/330))*(0.915/330); 
        b(k) = b(k) + y(t)*sin(k*w0*(t*T/330))*(0.915/330);
        a0 = a0 + y(t)*(0.915/300); 
    end
    a(k) = 2/T * a(k); 
    b(k) = 2/T * b(k); 
    a0 = 1/T * a0; 
end

x = zeros(3000, 1); 
sum_a = 0; sum_b = 0; 
for t = 1:3000 
    for k = 1:100
        sum_a = a(k)*cos(2*pi*k*f0*(t*0.122/44)) + sum_a; 
        sum_b = sum_b + b(k)*sin(2*pi*k*f0*(t*0.122/44)); 
    end
    x(t) = a0 + sum_a + sum_b; 
end

figure()
plot(x(1:3000,1)); 
ylabel('x(t)');
xlabel('number of samples');
title('synthetic ecg');
