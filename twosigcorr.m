clc;
clear all;
close all;

x=input('Please Enter The First Sequence: ');
h=input('Please Enter The Second Sequence: ');
n=1-length(x):length(x)-1;

y=xcorr(x,h)

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(3,1,1);
stem(0:length(x)-1,x);
title('2K19/EC/071 Harshal Chowdhary');
xlabel('n---------->');
ylabel('x[n]------->');

subplot(3,1,2);
stem(0:length(h)-1,h);
xlabel('n---------->');
ylabel('h[n]------->');

subplot(3,1,3);
stem(n,y);
xlabel('n---------->');
ylabel('y[n]------->');

input('Thank You');