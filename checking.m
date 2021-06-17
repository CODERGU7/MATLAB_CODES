clc;
clear all;
close all;

s=tf('s');
g=(s+1)/(s^2+4*s+4);
t=0:0.1:15;
u1= sin(t);
u2= cos(t);
subplot(2,2,1);
lsim(g,u1,t);
title('Response to Sine input');
subplot(2,2,2);
lsim(g,u2,t);
title('Response to Cosine input');
h=(s+5)/(s^2+5*s+6);
V=exp(-3*t);
subplot(2,2,3);
lsim(h,V,t);
title('Response to Exponential input');

i=input('thank you');
