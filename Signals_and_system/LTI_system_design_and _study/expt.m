%Design and study of LTI system

clc;
close all;
clear all;
%given difference equation:y(n)-y(n-1)+.9y(n-2)=x(n)

a=[1,-1,.9];
b=[1];
n=0:3:100;

%generating unit impulse signal
x1=(n==0);
%impulse response
h1=filter(b,a,x1);
subplot(3,1,1);
stem(n,h1);
xlabel('n');
ylabel('h(n)');
title('Impulse Response');

%checking stability of system
res=sum(h1);
if res<Inf
  disp("The given system is stable as the impulse response is bounded.");
else
  disp("The given system is not stable.");
endif

%generating sine signal
t=0:.01:1;
x2=sin(2*pi*4*t);
%impulse response
h2=filter(b,a,x2);
subplot(3,1,2);
stem(t,h2);
xlabel('n');
ylabel('h(n)');
title('Sinusoidal response');

%generating unit step signal
t=(0:0.1:1);
u=(t>=0);
%impulse response
h3=filter(b,a,u);
subplot(3,1,3);
stem(t,h3);
xlabel('n');
ylabel('h(n)');
title('Unit Step Signal Response');