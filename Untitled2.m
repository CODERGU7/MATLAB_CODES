clc;
clear all;
close all;

b=input('Enter the num coeff: ');
a=input('Enter the den coeff: ');
[r,p,k] = residue(b,a)
[r,p,k] = residuez(b,a)

figure('Name','Harshal Chowdhary 2K19/EC/071','NumberTitle','off'); 
[H,T]=impulse(b,a);
subplot(2,1,1);
plot (H)
xlabel('time------->')
ylabel('h------>')
title('Impulse Response')

[E]=step(b,a);
subplot(2,1,2);
plot (E)
xlabel('time------->')
ylabel('h------>')
title('Step Response')

t=input('Thank you');