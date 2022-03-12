filename = '115.csv';
Y = readmatrix(filename);
y = Y(:,2);

T = 0.915;
w0 = 2*pi/T; 

a = zeros(100,1); 
b = zeros(100,1); 
for k = 1:100
    for t = 530:1:860
        a(k) = a(k) + y(t)*cos(k*w0*(t*T/330))*(0.915/330); 
        b(k) = b(k) + y(t)*sin(k*w0*(t*T/330))*(0.915/330);
    end
    a(k) = 2/T * a(k); 
    b(k) = 2/T * b(k); 
end

subplot(2,1,1)
subtitle('ak');
stem(1:100, a)
subplot(2,1,2)
subtitle('bk');
stem(1:100, b)

%plotted 100 fourier series coefficients
