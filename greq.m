clc;
clear all;
close all;

b=[1];
a=[1 -0.8];
w=0:0.1:2*pi;
h=freqz(b,a,w);

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(2,1,1);
plot(w/pi,-20*log10(abs(h)));
xlabel('Normalized Frequency\omega\pi');
ylabel('Magnitude');
title('The Frequency Of a first order system h(n)=0.8U(n)');

subplot(2,1,2);
plot(w/pi,angle(h));
