clc;
clear all;
close all;

x=input('Please Enter The First sequence: ');
h=input('Enter The value by which the time varied: ');  
n=h+1-length(x):h+length(x)-1;

y=xcorr(x,x)

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(3,1,1);
stem(0:length(x)-1,x);
title('2K19/EC/071 Harshal Chowdhary');
xlabel('n---------->');
ylabel('x[n]------->');

subplot(3,1,2);
stem(h:h+length(x)-1,x);
xlabel('n---------->');
ylabel('x[n]------->');
title('Shifted x[n]');

subplot(3,1,3);
stem(n,y);
xlabel('n---------->');
ylabel('y[n]------->');

input('Thank You');
