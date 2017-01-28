function [out]= zcr(x,ms)
L= length(x);
N= ms/0.0625;
w_hamming = hamming (N);
y=sign(x);
for j= 2:L 
    yt(j-1)= abs(y(j)-y(j-1));
end
%mhkos(yt)
w= fft(w_hamming,L+N-2);
yt= fft(yt, L+N-2);
%mhkos dft w
%mhkos dft yt
Z= yt.*w';
%inverse fft
out= ifft(Z);
end
