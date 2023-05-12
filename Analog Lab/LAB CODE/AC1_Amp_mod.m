clc;
clear all;
close all;
t = 0:0.001:2;
f1 = 5;
m = sin(2*pi*f1*t);
subplot(5,1,1);
plot(t,m);
title('Message signal');
xlabel('time');
ylabel('Amplitude');
grid on;

f2 = 50;
c = sin(2*pi*f2*t);
subplot(5,1,2);
plot(t,c);
title('Carrier signal');
xlabel('time');
ylabel('Amplitude');
grid on;

m1 = 0.5;
s1 = (1+(m1.*m)).*c;
subplot(5,1,3);
plot(t,s1);
title('Under Modulation signal');
xlabel('time');
ylabel('Amplitude');
grid on;

m2 = 1;
s2 = (1+(m2.*m)).*c;
subplot(5,1,4);
plot(t,s2);
title('Critical Modulation signal');
xlabel('time');
ylabel('Amplitude');
grid on;

m3 = 1.5;
s3 = (1+(m3.*m)).*c;
subplot(5,1,5);
plot(t,s3);
title('Over Modulation signal');
xlabel('time');
ylabel('Amplitude');
grid on;
axis([0,2,-2.5,2.5]);
