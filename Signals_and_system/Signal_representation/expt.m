clc;
close all;
clear all;
t=(0:0.25:10);
T=10;
x=sin(2*pi*t/T);
subplot(6,2,1);
plot(t,x);
xlabel('time');
ylabel('x(t)');
title('Sine wave');

subplot(6,2,2);
stem(t,x);
xlabel('time');
ylabel('x(t)');
title('Discrete sine wave');

y=cos(2*pi*t/T);
subplot(6,2,3);
plot(t,y);
xlabel('time');
ylabel('x(t)');
title('Cosine wave');

subplot(6,2,4);
stem(t,y);
xlabel('time');
ylabel('x(t)');
title('Discrete cosine wave');

t=(0:0.5:10);
e=exp(t);
subplot(6,2,5);
plot(t,e);
xlabel('time');
ylabel('x(t)');
title('Exponential wave');

subplot(6,2,6);
stem(t,e);
xlabel('time')
ylabel('x(t)')
title('Discrete Exponential Wave')

t=(-1:0.01:1);
i=(t==0);
subplot(6,2,7);
plot(t,i);
xlabel('time');
ylabel('x(t)');
title('Unit impulse');

subplot(6,2,8);
stem(t,i);
xlabel('time');
ylabel('x(t)')
title('Discrete Unit Impulse');

t=(0:0.1:1);
u=(t>=0);
subplot(6,2,9);
plot(t,u);
xlabel('time');
ylabel('x(t)');
title('Unit step');

subplot(6,2,10);
stem(t,u);
xlabel('time');
ylabel('x(t)');
title('Discrete Unit step');

r=(t.*u);
subplot(6,2,11);
plot(t,r);
xlabel('time');
ylabel('x(t)');
title('Unit ramp');

subplot(6,2,12);
stem(t,r);
xlabel('time');
ylabel('x(t)');
title('Discrete Unit ramp');


