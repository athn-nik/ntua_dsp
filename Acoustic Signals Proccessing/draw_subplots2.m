function draw_subplots2 (k, N, w, s1, bhma)
    figure(k);
    for i = 1:20
        w = w - bhma;
        dw = w - pi/9;
        L = length(s1);
        n = 0:(L-1);
        s2 = 0.8*exp(1i*(w*n+pi/13));
        z = (hamming(L)').*(s1+s2);
        Z = fft(z,N);
        subplot(4,5,i), plot(abs(Z));
        title(dw);
    end;
end