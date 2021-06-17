clc;
clear all;
close all;

x=input('Please Enter The sequence');
n=1-length(x):length(x)-1;

y=xcorr(x,x)

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(2,1,1);
stem(0:length(x)-1,x);
title('2K19/EC/071 Harshal Chowdhary');
xlabel('n---------->');
ylabel('x[n]------->');

subplot(2,1,2);
stem(n,y);
xlabel('n---------->');
ylabel('y[n]------->');

input('Thank You');