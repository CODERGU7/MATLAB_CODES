clc;
clear all;
close all;

x=input('Please Enter The First sequence: ');
sx=input('Enter The starting point: ');  
h=input('Please Enter The Second sequence: ');
sh=input('Enter The starting point: '); 
sn=sx-(sh+length(h)-1);
se=sh+(length(x)+length(h)-2);

y=xcorr(x,h)

figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(3,1,1);
stem(sx:sx+length(x)-1,x);
title('2K19/EC/071 Harshal Chowdhary');
xlabel('n---------->');
ylabel('x[n]------->');

subplot(3,1,2);
stem(sh:sh+length(h)-1,h,'g-');
xlabel('n---------->');
ylabel('h[n]------->');

subplot(3,1,3);
stem(sh:se,y,'r-');
xlabel('n---------->');
ylabel('y[n]------->');

input('Thank You');
