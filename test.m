clc;
clear all;
close all;

T=input('Enter the period of Square Wave: ');
n1=input('Enter the No. of cycles to be plotted: ');
n=input('Enter the harmonics to be present: ');
i=0;
k=n1*T/2;

syms t;
    x=0;
    for j=1:2:(2*n-1)
        xnew=x+((4*cos(t*2*pi*j/T)-(pi*floor(j/2)))/(j*pi))
        x=xnew;
    end
 
for j=1:2:19
    r=(pi*floor(j/2)) 
end