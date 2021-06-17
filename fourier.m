clc;
clear all;
close all;

T=input('Enter the period of Square Wave: ');
n1=input('Enter the No. of cycles to be plotted: ');
n=input('Enter the harmonics to be present: ');
figure('Name','Harshal Chowdhary 2K19/EC/071','NumberTitle','off');
wo=((2*pi)/T);
N=1:1:2*n-1;
syms t;
ao=(1/T)*(int(1,t,0,T/2)+int(-1,t,T/2,T))

an=(2/T)*(int(1*cos(N*wo*t),t,0,T/2)+int(-1*cos(N*wo*t),t,T/2,T))

bn=(2/T)*(int(1*sin(N*wo*t),t,0,T/2)+int(-1*sin(N*wo*t),t,T/2,T))
t=-n1/2:n1/200:n1/2;
fn=0;
for i=1:2:2*n-1
    fn=fn+(an(i)*cos(i*wo*t))+(bn(i)*sin(i*wo*t));
    final=fn+ao;
    plot(t,final)
end 
