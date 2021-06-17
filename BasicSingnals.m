clc;
clear all;
close all;

%Continous Sine Function
a1=input('Enter the Amplitude for Sine Function:');
f1=input('Enter the Frequency for Sine function:');
t1_start=input('Enter the starting time for sine Function:');
t1_end=input('Enter the ending time for Sine Function:');
t1=t1_start:0.001:t1_end;
xs=a1*sin(2*pi*f1*t1);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(2,1,1);
plot(t1,xs,'g-');
grid on
ylim([-(a1+1) a1+1]);
title('Continous Sine Function');
xlabel('Time')
ylabel('Amplitude')

%Discrete Sine Function
n1=t1_start:t1_end;
sd=a1*sin(2*pi*f1*n1);
subplot(2,1,2);
stem(n1,sd,'r-');
grid on
ylim([-(a1+1) a1+1]);
title('Discrete Sine Function');
xlabel('n')
ylabel('Amplitude')

%Contionous Cosine Function
a2=input('Enter the Amplitude for cOSine Function:');
f2=input('Enter the Frequency for cosine function:');
t2_start=input('Enter the starting time for cosine Function:');
t2_end=input('Enter the ending time for cosine Function:');
t2=t2_start:0.001:t2_end;
xc=a2*cos(2*pi*f2*t2);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(2,1,1);
plot(t2,xc,'g-');
grid on
ylim([-(a2+1) a2+1]);
title('Discrete Cosine Function')
xlabel('Time')
ylabel('Amplitude')

%Discrete Cosine Function
n2=t2_start:t2_end;
sc=a2*cos(2*pi*f2*n2);
subplot(2,1,2);
stem(n2,sc,'r-');
grid on
ylim([-(a1+1) a1+1]);
title('Discrete Cosine Function');
xlabel('n')
ylabel('Amplitude')

%Discrete Unit Impulse function
t=-3:3;
y=[zeros(1,3), ones(1,1), zeros(1,3)];
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(2,1,1);
stem(t,y);
grid on
ylim([0 2]);
title('Discrete Unit Impulse');
xlabel('n')
ylabel('d(n)')

%Continous Unit Impulse fUNCTION
n3=-5.1:-0.1;
n4=0.1:5.1;
outs=zeros(1,6);
n5=0;
abc=[n3 n5 n4];
outp=10;
abcd=[outs outp outs];

subplot(2,1,2);
plot(abc,abcd);
grid on
ylim([0 11]);
title('Continous Unit Impulse');
xlabel('time')
ylabel('Amplitude')

%Discrete Unit Step Function
nx1=input('Pls enter the value of n:');
t7=-nx1+1:nx1-1;
y3=[zeros(1,nx1-1),ones(1,nx1)];
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(2,1,1);
stem(t7,y3);
grid on
ylim([0 2]);
title('Discrete Unit Step');
xlabel('n')
ylabel('U(n)')

%Continous Unit Step Function
n6=-5.1:-0.1;
n7=0:5;
outsd=zeros(1,6);
outss=ones(1,6);
abcde=[n6 n7];
abcdef=[outsd outss];
subplot(2,1,2);
plot(abcde,abcdef);
grid on
ylim([0 2]);
title('Continous Unit Step');
xlabel('Time')
ylabel('Amplitude')

%Discrete Unit Ramp Function
nx2=input('Till what value you want to see graph:');
y6=1:nx2;
t5=-5:nx2;
xr=[zeros(1,6) y6];
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
grid on
subplot(2,1,1);
stem(t5,xr);
grid on
title('Discrete Unit Ramp Function');
xlabel('n');   
ylabel('r(n)')

%Continous Unit Ramp Function
subplot(2,1,2);
plot(t5,xr);
grid on
title('Continous Unit Ramp Function');
xlabel('Time')   
ylabel('Amplitude')

%Dicrete Increasing Exponential Function
nf=input('Enter length of exponential seq:');
t6=0:nf-1;
p=input('Enter a value:');
y6=exp(p*t6);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
grid on
subplot(2,1,1)
stem(t6,y6,'k-')
grid on
title('Discrete increasing Exponential Function');
xlabel('n')
ylabel('Exp')

%Continous Increasing Exponential Function
t13=0:0.01:nf-1;
y13=exp(p*t13);
subplot(2,1,2)
plot(t13,y13,'k-')
grid on
title('Continous increasing Exponential Function');
xlabel('time')
ylabel('amplitude')

%Dicrete nEGATIVE eXPONENTIAL Function
t11=-10:nf-1;
y11=exp(-1*p*t11);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
grid on
subplot(2,1,1)
stem(t11,y11,'g-')
grid on
title('Discrete Decreasing Exponential Function');
xlabel('n');
ylabel('exp');

%Continous Decreasing Exponential fUNCTION
t12=-10:0.01:nf-1;
y12=exp(-1*p*t12);
subplot(2,1,2)
plot(t12,y12,'k-')
grid on
title('Discrete Decreasing Exponential Function');
xlabel('Time');
ylabel('Amplitude');

%Continous Tangent Function
f = @(theta) tan(theta);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(2,1,1);
fplot(f,[-2*pi 2*pi]);
grid on
title('Continous Tan Function');
xlabel('time');
ylabel('Amplitude');

x14=-6:6;
y14=tan(x14);
subplot(2,1,2);
stem(x14,y14);
grid on
title('Discrete Tan Function');
xlabel('n');
ylabel('tan(n)');
l=input('thank you');
