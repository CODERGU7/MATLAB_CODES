clc;
clear all;
close all;

%input
x=input('Please enter the sequence:');
n=1-length(x):length(x)-1;

%starting point
n1=input('Enter the starting point:');

%correlation
y=xcorr(x,x)

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(1,2,1);
stem(n1:1:n1+length(x)-1,x,'r');
xlabel('n---->');
ylabel('Delayed signal x[n-n1]');
title('Harshal Chowdhary');

subplot(1,2,2);
stem(n,y,'r');
xlabel('n---->');
ylabel('y[n]--->');