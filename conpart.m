clc;
clear all;
close all;

%Input from user of sequence
x=input('Enter The first Sequence: ');
h=input('Enter The second Sequence: ');

%Input Regarding Starting Of Sequence
sx=input('starting point of x[n]: ');
sh=input('Starting point of h[n]: ');
sy=sx+sh;

N=length(x)+length(h)-1;

y1=[zeros(1,N)];
x1=[x,zeros(1,length(x)-1)]
h1=[h,zeros(1,length(h)-1)]

for i=1:N
    for j=1:i
        y1(i)= y1(i)+x1(j)*h1(i-j+1);
    end;
end;    
y1

%Plotting Graphs
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');

subplot(3,1,1);
stem(sx:1:sx+length(x1)-1,x1,'r-');
title('Harshal Chowdhary');
ylabel('Amplitude --------->');
xlabel('n--------->');

subplot(3,1,2);
stem(sh:1:sh+length(h1)-1,h1,'g-');
ylabel('Amplitude --------->');
xlabel('n--------->');

subplot(3,1,3);
stem(sy:1:sy+length(y1)-1,y1);
ylabel('Convolution --------->');
xlabel('n--------->');

c=input('THank you');
