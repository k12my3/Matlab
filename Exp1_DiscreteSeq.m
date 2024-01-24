% Generation of Discrete Time Signals using Matlab

clc;
clear all;
close all;

n=[0,0,0,1,0,0,0];
x1=[-3,-2,-1,0,1,2,3];
subplot(3,3,1);
stem(n,x1);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Unit Signal");

m=[1,2,3,4,5,6,7];
x2=[1,2,3,4,5,6,7];
subplot(3,3,2);
stem(m,x2);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Unit Ramp Signal");

o=[1,1,1,1,1,1,1,1,1];
x3=[0,1,2,3,4,5,6,7,8];
subplot(3,3,3);
stem(o,x3);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Unit Impulse Signal");

p=0:0.1:10;
y= sin(p);
y1= cos(p);
subplot(3,3,4);stem(p,y);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Discrete Sine Signal");
subplot(3,3,5);stem(p,y1);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Discrete Cosine Signal");

y2=exp(p);
subplot(3,3,6);stem(p,y2);
xlabel("Discrete time n--->");
ylabel("Amplitude--->");
title("Discrete Exponential Signal");