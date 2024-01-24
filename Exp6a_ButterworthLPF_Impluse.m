%write matlab program to design Butterworth LPF using Impulse invariance and Bilinear method
clc;
clear all;
close all;
zeros = [1 2 3];
poles = [6 5 4];
gain = 7;
ts = 0.1;
sys = zpk(zeros,poles,gain,ts);

% Analog poles and zeros
b = 2; 
a = [1 2]; 
T = 1; 
fs = 1/T; % Assume sampling frequency = 1 Hz.

% Transformation from analog to digital using impulse invariance method.
[bz,az] = impinvar(b,a,fs);
disp("bz : " + bz);
disp("az : "); disp(az);
% Normalized TF coefficients H[e^jw] = H[e^jw]/(H[e^j0]);
H0 = 2/(1-0.1353) ;
bz = bz/H0;
disp("bz/H0 : " + bz);
freqz(bz,az,512,fs);