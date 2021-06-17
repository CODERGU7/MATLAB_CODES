clc;
close all;
clear all;
%Setting X-axis Limit
Nmin=-6;
Nmax=6;
N=Nmin:1:Nmax;
%Calling the function
Yo=Yd(N)
%Reversing Of Function
Yr=Yo(end:-1:1)
%Even Of a Function
Ye=(Yo+Yr)/2
%Odd of a function
Y0=(Yo-Yr)/2
Ymax=max([max(Yo),max(Yr),max(Y0),max(Ye)]);
Ymin=min([min(Yo),min(Yr),min(Y0),min(Ye)]);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
%Plotting Of Normal FORM
subplot(2,2,1);
stem(N,Yo);
xlabel("N");
ylabel("Y(N)");
title('Normal Form');
axis([Nmin, Nmax, Ymin, Ymax]);
%pLOTTING oF REVERSE OF SEQUENCE
subplot(2,2,2);
stem(N,Yr);
xlabel("N");
ylabel("Y(N)");
title('Reverse Form');
axis([Nmin, Nmax, Ymin, Ymax]);
%Plotting Of Even Part of function
subplot(2,2,3);
stem(N,Ye);
xlabel("N");
ylabel("Y(N)");
title('Even Form');
axis([Nmin, Nmax, min(Ye),max(Ye)]);
%Plotting Of Odd Part Of Function
subplot(2,2,4);
stem(N,Y0);
xlabel("N");
ylabel("Y(N)");
title('Odd Form');
axis([Nmin, Nmax, min(Y0), max(Y0)]);

function X=Yd(N)
X=[1,-1,2,-5,-1,1,3,-2,-1,0,1,-1,-2]
end