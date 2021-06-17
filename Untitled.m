clc;
clear all;
close all;

a=input('Please enter the amplitude: ');
f=input('Please enter the frequency: ');

T=1/f;
t=0:0.01:T;
y=a*sin(2*pi*f*t);

t1=0:0.01:T/2;
h1=a*sin(2*pi*f*t1);
fprintf('For Half Wave Rectifier');
Vavg=a/pi
Vrms=a/2   
Form_Factor=Vrms/Vavg
Ripple_Factor=sqrt(((Form_Factor)*(Form_Factor))-1)

fprintf('For Full Wave Rectifier');
Vavg1=2*a/pi
Vrms1=a/1.414    
Form_Factor1=Vrms1/Vavg1
Ripple_Factor1=sqrt(((Form_Factor1)*(Form_Factor1))-1)

t2=T/2:0.01:T;   
h2=0;

subplot(3,1,1);
plot(t,y);
xlabel('time---------->');
ylabel('Amplitude');
title('Normal Form');

subplot(3,1,2);
plot(t1,h1,t2,h2);
xlabel('time---------->');
ylabel('Amplitude');
title('Half Wave Rectified Form');

subplot(3,1,3);
plot(t1,h1,t2,h1);
xlabel('time---------->');
ylabel('Amplitude');
title('Full Wave Rectified Form');