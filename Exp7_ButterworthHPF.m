%Design a Butterworth HPF using Matlab
clc;
clear all;
close all;

alphas = 50; % Pass Band attenuation (dB)
alphap = 1; % Stop Band attenuation (dB)
fp = 1050;
fs = 600;
fsam = 3500;
wp = 2 * fp / fsam;
ws = 2 * fs / fsam;

[n, wn] = buttord(wp, ws, alphap, alphas);
% 1. buttord calculates the minimum order of a digital or analog Butterworth filter required to 
% meet a set of filter design specifications
% 2. [n,Wn] = buttord(Wp,Ws,Rp,Rs) returns the lowest order, n, 
% of the digital Butterworth filter with no more than Rp dB of passband ripple and at least Rs dB of
% attenuation in the stopband. Wp and Ws are respectively the passband and stopband edge frequencies
% of the filter, normalized from 0 to 1, where 1 corresponds to π rad/sample.
% 3. The scalar (or vector) of corresponding cutoff frequencies, Wn, is also returned.
% 4. To design a Butterworth filter, use the output arguments n and Wn as inputs to butter.

[b, a] = butter(n, wn, 'High');
% [b,a] = butter(n,Wn,ftype) designs a lowpass, highpass, bandpass, or bandstop Butterworth filter,
% depending on the value of ftype and the number of elements of Wn. The resulting bandpass and bandstop
% designs are of order 2n.

[h, w] = freqz(b, a);
%[h,w] = freqz(b,a,n) returns the n-point frequency response vector h and the corresponding angular
%frequency vector w for the digital filter with transfer function coefficients stored in b and a.
%n not mentioned -> default value = 1?

subplot(2,1,1); plot(w/pi, 20*log10(abs(h)));
xlabel("Normalized frequency"); ylabel("Gain in dB");
title("Magnitude Response");

subplot(2,1,2); plot(w/pi, angle(h));
xlabel("Normalized frequency"); ylabel("Phase in radians");
title("Phase Response");