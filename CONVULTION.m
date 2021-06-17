clc;
clear all;
close all;

%Taking the sequence from users.
x=input('Enter The first Sequence: ');
nx=0:1:length(x)-1;
h=input('Enter The second Sequence: ');
nh=0:1:length(h)-1; 

%Using Conv Function
y=conv(x,h)
ny=0:length(y)-1;

%Plotting of Graphs
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(3,1,1);
stem(-2:length(h)-3,x,'r-');
title('Harshal Chowdhary');
ylabel('Amplitude --------->');
xlabel('n--------->');

subplot(3,1,2);
stem(-1:length(h)-2,h,'g-');
ylabel('Amplitude --------->');
xlabel('n--------->');

subplot(3,1,3);
stem(-3:length(y)-4,y);
ylabel('Convolution --------->');
xlabel('n--------->');