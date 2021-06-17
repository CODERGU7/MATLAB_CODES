clc;
close all;
clear all;

Nmin=input('Enter The Starting Of the sequence: ');
Nmax=Nmin+12;
a=input('By what Factor Do you what to change function: ');
N=Nmin:Nmax;
Yo=Yd(N)
Ya=a*Yd(N)
Yomax=max(Yo);
Yomin=min(Yo);
Yamax=max(Ya);
Yamin=min(Ya);
figure('Name','2K19/EC/071 Harshal Chowdhary','NumberTitle','off');
subplot(3,2,1);
stem(N,Yo);
xlabel("n");
ylabel("Y(n)");
title('Normal Function');
axis([Nmin, Nmax, Yomin, Yomax]);

subplot(3,2,2);
stem(N,Ya);
xlabel("n");
ylabel("Y(n)");
title('amplitude Scaling');
axis([Nmin, Nmax, Yamin, Yamax]);

subplot(3,2,3);
stem((Nmin/a):1/a:(Nmax/a),Yo);
xlabel("n");
ylabel("Y(n)");
title('Time Scaling');
axis([(Nmin/a), (Nmax/a), Yomin, Yomax]);

subplot(3,2,4);
stem(Nmin-a:1:Nmax-a,Yo);
xlabel("n");
ylabel("Y(n)");
title('Graph of Time Advancement');
axis([(Nmin-a), (Nmax-a), Yomin, Yomax]);

subplot(3,2,5);
stem(Nmin+a:1:Nmax+a,Yo);
xlabel("n");
ylabel("Y(n)");
title('Graph of Time Delay');
axis([(Nmin+a), (Nmax+a), Yomin, Yomax]);

function X=Yd(N)
X=[1,-1,2,-5,-1,1,3,-2,-1,0,1,-1,-2]
end