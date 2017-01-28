function [t] = tone (num)
L=1000;
n=1:L;
[w1,w2]=givetones(num);
t=sin(w1*n)+sin(w2*n);
end