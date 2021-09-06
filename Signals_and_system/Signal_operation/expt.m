clc;
close all;
clear all;

%generate two input signals
t=0:.01:1;
x1=sin(2*pi*4*t);
x2=sin(2*pi*8*t);
subplot(2,2,1);
plot(t,x1);
xlabel('time');
ylabel('amplitude');
title('signal1:sine wave of frequency 4Hz');
subplot(2,2,2);
plot(t,x2);
xlabel('time');
ylabel('amplitude');
title('signal2:sine wave of frequency 8Hz');

%addition of two signals
y1=x1+x2;
subplot(2,2,3);
plot(t,y1);
xlabel('time');
ylabel('amplitude');
title('addition of two signal');

%multiplication of two signals
y2=x1.*x2;
subplot(2,2,4);
plot(t,y2);
xlabel('time');
ylabel('amplitude');
title('multiplication of two signal');

%scaling of a signal
a=10;
figure(2);
subplot(2,2,1);
plot(t,x1);
xlabel('time');
ylabel('amplitude');
title('signal1:sine wave of frequency 4Hz');
subplot(2,2,2);
plot(t/a,x1);
xlabel('time');
ylabel('amplitude');
title('scaling of signal');

%folding of signal
l1=length(x1);
nx=0:l1-1;
subplot(2,2,3);
plot(nx,x1);
xlabel('nx');
ylabel('amplitude');
title('signal1:sine wave of frequency 4Hz');
y4=fliplr(x1);
nf=-fliplr(nx);
subplot(2,2,4);
plot(nf,y4);
xlabel('nf');
ylabel('amplitude');
title('folded signal');

%shifting of signal
a=5;
figure(3);
subplot(2,2,1);
plot(t,x1);
xlabel('time');
ylabel('amplitude');
title('signal1:sine wave of frequency 4Hz');
subplot(2,2,2);
plot(t+a,x1);
xlabel('time');
ylabel('amplitude');
title('Right shift of signal');
subplot(2,2,3);
plot(t,x1);
xlabel('time');
ylabel('amplitude');
title('signal1:sine wave of frequency 4Hz');
subplot(2,2,4);
plot(t-a,x1);
xlabel('time');
ylabel('amplitude');
title('Left shift of signal');

%Computation of energy
y=(1/2)*(1-cos(4*pi*4*t));
res=sum(y);
disp("The energy of the signal 1 is: "),disp(res);

%Computation of average power
respower=res/Inf;
disp("The average power of the signal 1 is:"),disp(respower);
 
%operation on sequences
n1=1:1:9;
s1=[1 2 3 0 6 5 2 4 1];
figure(4);
subplot(2,2,1);
stem(n1,s1);
xlabel('n1');
ylabel('amplitude');
title('input sequence 1');
n2=-2:1:6;
s2=[2 5 2 4 7 8 1 0 6];
subplot(2,2,2);
stem(n2,s2);
xlabel('n2');
ylabel('amplitude');
title('input sequence 2');

%addition of two sequences
if n1>n2
   t2=s2(1+n1-n2:end);
   s3=s1(1:length(t2))+t2;
   subplot(2,2,3);
   stem(n1(1:length(n1)-n1+n2),s3);
   xlabel('n');
   ylabel('amplitude');
   title('addition of sequence');
elseif n1<n2
   t1=s1(1+n2-n1:end);
   s3=s2(1:length(t1))+t1;
   subplot(2,2,3);
   stem(n2(1:length(n2)-n2+n1),s3);
   xlabel('n');
   ylabel('amplitude');
   title('addition of sequence');
else
   s3=s1+s2;
   subplot(2,2,3);
   stem(n1,s3);
   xlabel('n');
   ylabel('amplitude');
   title('addition of sequence');
endif

%multiplication of two sequences
if n1>n2
   t2=s2(1+n1-n2:end);
   s3=s1(1:length(t2)).*t2;
   subplot(2,2,4);
   stem(n1(1:length(n1)-n1+n2),s3);
   xlabel('n');
   ylabel('amplitude');
   title('multiplication of sequence');
elseif n1<n2
   t1=s1(1+n2-n1:end);
   s3=t1.*s2(1:length(t1));
   subplot(2,2,4);
   stem(n2(1:length(n2)-n2+n1),s3);
   xlabel('n');
   ylabel('amplitude');
   title('multiplication of sequence');
else
   s3=s1.*s2;
   subplot(2,2,4);
   stem(n1,s3);
   xlabel('n');
   ylabel('amplitude');
   title('multiplication of sequence');
endif

%scaling of a sequennce
a=5;
figure(5);
subplot(2,2,1);
stem(n1,s1);
xlabel('n1');
ylabel('amplitude');
title('input sequence 1');
subplot(2,2,2);
stem(n1/a,s1);
xlabel('n1');
ylabel('amplitude');
title('scaling of sequence');

%folding of sequence
l1=length(s1);
nx=0:l1-1;
subplot(2,2,3);
stem(nx,s1);
xlabel('nx');
ylabel('amplitude');
title('Input sequence 1');
y4=fliplr(s1);
nf=-fliplr(nx);
subplot(2,2,4);
stem(nf,y4);
xlabel('nf');
ylabel('amplitude');
title('folded sequence');

%shifting of sequence
a=5;
figure(6);
subplot(2,2,1);
stem(n1,s1);
xlabel('time');
ylabel('amplitude');
title('Input sequence');
subplot(2,2,2);
stem(n1+a,s1);
xlabel('time');
ylabel('amplitude');
title('Right shift of sequence');
subplot(2,2,3);
stem(n1,s1);
xlabel('time');
ylabel('amplitude');
title('Input sequence');
subplot(2,2,4);
stem(n1-a,s1);
xlabel('time');
ylabel('amplitude');
title('Left shift of sequence');
   
%Computation of energy of sequence
y=power(s1,2);
res=sum(y);
disp("The energy of input sequence 1 is: "),disp(res);

%Computation of average power of sequence
respower=res/Inf;
disp("The average power of input sequence 1 is:"),disp(respower);




