% Amplitude Modulation
clc
fm=20; %sets the frequency of the message signal to 20 Hz.
Am=1; %sets the amplitude of the message signal to 1.
t=[ 0: 0.0001: 0.1] ; %creates a time vector from 0 to 0.1 seconds with
%a time step of 0.0001 seconds.
m=Am*cos(2*pi*fm*t);  % generates the message signal, which is a cosine wave with a frequency
%of 20 Hz and an amplitude of 1.
subplot(4,3,1:3); %creates a subplot with 4 rows and 3 columns and sets the current 
%plot to the first 3 subplots.
plot(t,m);title('Modulating or Message signal(fm=20Hz)');
%plots the message signal on the first subplot.
xlabel('t--->'); ylabel('Amplitude');
Ac=1; % sets the amplitude of the carrier signal to 1.
fc=500; %sets the frequency of the carrier 
%signal to 500 Hz.
c=Ac*cos(2*pi*fc*t); %generates the carrier signal, which is a cosine wave
%with a frequency of 500 Hz and an amplitude of 1.
subplot(4,3,4:6); %sets the current plot to the next
%3 subplots.
plot(t,c);title('Carrier signal(fc=500Hz)'); %plots the carrier 
%signal on the fourth subplot.
xlabel('t--->'); ylabel('Amplitude');
k= Am / Ac; %calculates the modulation index.
u = 0.5 * k; % sets the modulation index to 0.5.
s1=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t); %generates the under-modulated
%signal using the modulation index of 0.5.
subplot(4,3,7); %sets the current plot to
%the seventh subplot.
plot(t,s1,'red');title('Under Modulated signal(Modulation index = 0.5)');
%plots the under-modulated signal on the seventh subplot.
xlabel('t--->'); ylabel('Amplitude');
u = 1 * k; %sets the modulation index to 1.
s2=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
%generates the critically modulated signal using the modulation
%index of 1.
subplot(4,3,8); %sets the current plot
%to the eighth subplot.
plot(t,s2);title('Critical Modulated signal(Modulation index =1)');
%plots the critically modulated signal on
%the eighth subplot.
xlabel('t--->'); ylabel('Amplitude');
u = 2.5 * k; %sets the modulation index to 2.5.
s3=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
% generates the over-modulated signal using the modulation 
%index of 2.5.
subplot(4,3,9); %sets the current plot 
%to the ninth subplot.
plot(t,s3);title('Over Modulated signal(Modulation index =2.5)');
% plots the over-modulated signal on the ninth subplot.
xlabel('t--->'); ylabel('Amplitude');