%askhsh 2.2
n=0:255;
w1=pi/9;
w2=pi/5;
%pd1 = makedist('Normal');f1 = random(pd1);pd2 = makedist('Normal');f2 = random(pd2);
x1=1*exp(1j*(w1*n+pi/42));
x2=0.8*exp(1j*(w2*n+pi/17));
y=(hamming(256)').*(x1+x2);
Y=fft(y);
figure(1);
plot (abs(Y));
draw_subplots2(2, 256, pi/5, x1, 0.011);

%askhsh 2.3 512
x1=0;
x2=0;

n=0:255;
w1=pi/9;
w2=pi/5;
%%pd1 = makedist('Normal');f1 = random(pd1);pd2 = makedist('Normal');f2 = random(pd2);
x1=1*exp(1j*(w1*n+pi/42));
x2=0.8*exp(1j*(w2*n+pi/17));
y=(hamming(256)').*(x1+x2);
Y=fft(y,512);
figure(3);
plot (abs(Y));
draw_subplots2(4, 512, pi/5, x1, 0.011);

%askhsh 2.3 1024
x1=0;
x2=0;

n=0:255;
w1=pi/9;
w2=pi/5;
%pd1 = makedist('Normal');
%f1 = random(pd1);
%pd2 = makedist('Normal');
%f2 = random(pd2);
x1=1*exp(1j*(w1*n+pi/42));
x2=0.8*exp(1j*(w2*n+pi/17));
y=(hamming(256)').*(x1+x2);
Y=fft(y,1024);
figure(5);
plot (abs(Y));
draw_subplots2(6, 1024, w2, x1, 0.011);

% askisi2.4 (512);
w1 = pi/9;
w2 = w1 + 0.07;
x1 = 0;
x2 = 0;
n = 0:511;
%pd1 = makedist('Normal');
%f1 = random(pd1);
%pd2 = makedist('Normal');
%f2 = random(pd2);
x1=1*exp(1j*(w1*n+pi/42));
x2=0.8*exp(1j*(w2*n+pi/17));

y = (hamming(512)').*(x1+x2);
Y = fft(y);
figure(7);
plot(abs(Y));
draw_subplots2(8, 512, w2, x1, 0.0012);


% askisi 2.4 (1024);
w1 = pi/9;
w2 = w1 + 0.04;
x1 = 0;
x2 = 0;
n = 0:1023;
%pd1 = makedist('Normal');
%f1 = random(pd1);
%pd2 = makedist('Normal');
%f2 = random(pd2);
x1=1*exp(1j*(w1*n+pi/42));
x2=0.8*exp(1j*(w2*n+pi/17));
y = (hamming(1024)').*(x1+x2);
Y = fft(y);
figure(9);
plot(abs(Y));
draw_subplots2(10, 1024, w2, x1, 0.0016);

%askhsh 2.5
n=0:255;
w1=0.5*pi;
w2=0.6*pi;
x1=1*exp(1j*(w1*n+pi/42));
x2=0.1*exp(1j*(w2*n+pi/17));
%(i)
wrect(n+1) = 1;
y1 = wrect.*(x1+x2);
figure(11);
plot(abs(fft(y1, 1024)));
%(ii)
y2 =(hamming(256)').*(x1+x2);
figure(12);
plot(abs(fft(y2, 1024)));










