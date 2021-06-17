clc;
clear all;
close all;

figure('Name','Harshal Chowdhary 2K19/EC/071','Numbertitle','off');
b=input('Enter the numerator coefficient');
a=input('Enter the denominator coefficent');
zplane(b,a)
title('Z Plane')