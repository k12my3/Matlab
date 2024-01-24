%Response of High pass FIR using Rectangular window

clc;
clear all;
close all;

n=20;
fp=100;
fq=300;
fs=1000;
fn=2*fp/fs;

window=rectwin(n+1);
b = fir1(n, fn, "high", window);

w = 0:0.001:pi;
[h,om] = freqz(b,1,w);

a = 20*log10(abs(h));
b = angle(h);

subplot(2,1,1); plot(w/pi, a);
xlabel("Normalized frequency");
ylabel("Gain in dB");
title("Magnitude plot");

subplot(2,1,2); plot(w/pi, b);
xlabel("Normalized frequency");
ylabel("Phase in Radians");
title("Phase Response");