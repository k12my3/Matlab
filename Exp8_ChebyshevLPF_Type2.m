%Experiment - 8 : Chebyshev LPF Type-2
clc;
clear all;
close all;

Wp = 40/500;
Ws = 150/500;
alphap = 3;
alphas = 60;
[n, Ws] = cheb2ord(Wp, Ws, alphap, alphas);
[b, a] = cheby2(n, alphas, Ws);
[h, w] = freqz(b, a);

subplot(2,1,1); plot(w/pi, 20*log10(abs(h)));
xlabel("Normalised Frequency");
ylabel("Gain in dB");
title("Magnitude Response");

subplot(2,1,2); plot(w/pi, angle(h));
xlabel("Normalised Frequency");
ylabel("Phase in radians");
title("Phase Response");