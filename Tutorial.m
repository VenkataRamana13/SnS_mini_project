% ----------------- Display Something ---------------------------

disp('Hello World!!');
disp('Hello MATLAB!!');

message = 'Hello World';
message1 = '!!';

messageFinal = [message message1];
disp(messageFinal);

% -------------------Matrices and Vectors ------------------------

A = [1,2,3;4,5,6;7,8,9];

message = 'The Matrix A is ';
disp(message);
disp(A);

B = [1,2,3,4,5];
message = 'The Matrix B is ';
disp(message);
disp(B);

Bcol = [1;2;3;4;5];
message = 'The Matrix Bcol is ';
disp(message);
disp(Bcol);

Bt = B';
message = 'The Transpose of B is ';
disp(message);
disp(Bt);

% -------------------- Concatenate Matrices ------------------------

A = [1,2,3];
B = [4,5,6];

SingleRow = [A,B];
message = 'The SingleRow is ';
disp(message);
disp(SingleRow);

SingleCol = [A';B'];
message = 'The SingleCol is ';
disp(message);
disp(SingleCol);

TwoRows = [A;B];
message = 'The TwoRows is ';
disp(message);
disp(TwoRows);

TwoCol = [A',B'];
message = 'The TwoCol is ';
disp(message);
disp(TwoCol);

% ----------------- Errors made during making Matrices ----------------

% A = [1,2,3;4,5;6,7,8,9];

% ------------------ Zeros and Ones --------------------------------

Z = zeros(2,2);

message = 'The zeros is ';
disp(message);
disp(Z);

O = ones(2,2);
message = 'The ones is ';
disp(message);
disp(O);

Z = zeros(1,100);

% ---------------------- .* and * ---------------------------------

A = [1,2,3,4,5];
B = A;

% Elementwise Multiplication

A2 = A.*B; % {nx1 nx1 = nx1}
message = 'The elementwise Multiplication is ';
disp(message);
disp(A2);

% Normal Multiplication

B = B';
M = A*B; % {nxm mxp = nxp}
message = 'The multiplication is ';
disp(message);
disp(M);

K = ones(2,2);
L = [1,2;3,4];

M = K*L;
message = 'The multiplication is ';
disp(message);
disp(M);

% ----------------------------- Array Indexing --------------------

% Indexing starts with 1

A = [1,2,3;4,5,6;7,8,9];
P1 = A(2,3);

message = 'The element at row 2 col 3 is ';
disp(message);
disp(P1);

P2 = A(3,:);

message = 'The third row is ';
disp(message);
disp(P2);

P3 = A(:,1);
message = 'The first column is ';
disp(message);
disp(P3);

P4 = A(:,1:2); % a:b takes all integers between a and b (both inclusive)
message = 'The first 2 columns are ';
disp(message);
disp(P4);

A = [1,2,3,4,5];
A1 = [A;A;A;A;A];
A = A1;

P5 = A(2:4,2:4);
message = 'The 2,3,4 cols are ';
disp(message);
disp(P5);

% ---------- Complex Numbers and Complex Exponentials --------------------

j = 1j; % or 1i

% Do not use i and j as loop variables

message = 'Checking j ';
disp(message);
disp(j*j);

% exp

A = [0,pi/4,pi/2,3*pi/4,pi]; % pi is just called pi
Cexp = exp(1j*A);
message = 'Checking complex exponential ';
disp(message);
disp(Cexp);
disp(abs(Cexp));

% ------------------------- exp, cos, sin -------------------------

% exp

AExp = exp(A);
message = 'Checking exponential ';
disp(message);
disp(AExp);

% cos

ACos = cos(A);
message = 'Checking cos ';
disp(message);
disp(ACos)

% sin

ASin = sin(A);
message = 'Checking sin ';
disp(message);
disp(ASin)

% ----------------------- if elseif else end ---------------------------

k1 = pi/3;
k2 = pi/6;
k3 = pi/2;

Sin1 = sin(k1);
Sin2 = sin(k2);
Sin3 = sin(k3);

if(Sin1>Sin2 && Sin1<=Sin3)
    disp('Sin is increasing bw 0 and pi/2');
    disp('wow');
elseif(Sin1>Sin2)
    disp('We messed up at pi/2');
else
    disp('We are wrong!!');
end

% --------------------------- linspace for DT ---------------------------

t = 0:0.1:1;

message = 'Checking DT ';
disp(message);
disp(t);

k = 0:2:7;
message = 'Checking exceptions ';
disp(message);
disp(k);

% -------------------------- for loop ------------------------------

for k = 1:10
    if(k==4)
        continue;
    end
    if(k==8)
        break;
    end
    message = ['Value of k is ', int2str(k)];
    disp(message);
end

% ----------------------- Plotting any function ----------------------

% Sine Wave

t = 0:0.01:4*pi;
y = sin(t);

figure()
plot(t,y,'black',linewidth=1.5);% plot(x-axis,y-axis,'color','thickness');
ylabel('y(t)');
xlabel('t');
title('Sinusoid');
xlim([-0.1 13]);
ylim([-1.1 1.1]);
grid on

% Ramp Signal

t = 0:0.001:4;
y = 2*t;
figure()
plot(t,y,'black',linewidth=1.5);% plot(x-axis,y-axis,'color','thickness');
ylabel('y(t)');
xlabel('t');
title('Ramp');
xlim([-0.1 4.1]);
ylim([-0.1 8.5]);
grid on

% Triangular signal

t1 = 0:0.001:4;
y1 = t;
t2 = 4.001:0.001:8;
y2 = 8-t2;

t = [t1,t2];
y = [y1,y2];

figure()
plot(t,y,'black',linewidth=1.5);% plot(x-axis,y-axis,'color','thickness');
ylabel('y(t)');
xlabel('t');
title('Triangle');
xlim([-0.1 8.1]);
ylim([-0.1 4.2]);
grid on

% ------------------ Reading from a wav file -----------------------

filename = 'testfile.wav';
[y,Fs] = audioread(filename);
l = length(y);

idx = 1:l;

figure()
plot(idx,y,'r');
ylabel('y(t)');
xlabel('t');
title('The signal read from the wav file');

% ------------------ Reading from a csv file -----------------------

%{
filename = 'testfile.csv';
Y = csvread(filename);
y = Y(:,2);
l = length(y);

idx = 1:l;

figure()
plot(idx,y,'r');
ylabel('y(t)');
xlabel('t');
title('The signal read from the csv file');
%}

% ----------------- Spectrogram ------------------------------------

figure()
pspectrum(y,1e3,'spectrogram','TimeResolution',0.1,'OverlapPercent',99,'Leakage',0.85);