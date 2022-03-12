filename = '115.csv';
Y = readmatrix(filename);
y = Y(:,2);

m = zeros(3000,1); 
for i = 1:3000
    m(i+1) = y(i+1) - y(i); 
end

figure()
plot(m);  
ylabel('m(t)');
xlabel('t');
title('Output signal when passed through an lti system');
