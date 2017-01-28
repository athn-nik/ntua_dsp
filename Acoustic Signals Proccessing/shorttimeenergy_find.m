function [e]= energy_find (x, ms)
%evresh energeias vraxeos xronou meso orismou duo newn shmatwn tetragwnwn
%twn arxikwn shmatwn
% arithmos deigamtwn N ms/period.deigmatol.(Ts)
N=ms/0.0625;
w_hamming = hamming (N);
L=length(x);
x_square= x.*x;
w_square= w_hamming.*w_hamming;
Dft_x_square= fft(x_square, L+N-1);
Dft_w_square= fft(w_square, L+N-1);
Enrg_frq= Dft_x_square.*Dft_w_square;
e= ifft(Enrg_frq);
end