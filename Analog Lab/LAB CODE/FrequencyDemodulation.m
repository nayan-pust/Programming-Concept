clc;
clear all; 
close all; %clears the command window and 
%workspace, and closes any open figures.
t=[0: 0.001: 0.4]; 
%creates a time vector with a time step
%of 0.001 seconds, ranging from 0 to 0.4 seconds.
fm =10; v =cos(2*pi*fm*t); 
%generates a sinusoidal message signal with a frequency of 10 Hz.
subplot(4,1,1);% creates a new subplot and
 plot(t, v); %plots the message signal.

fc=100; %frequency of 100 Hz.
c = sin(2*pi*fc*t);%generates a sinusoidal carrier signal with a 

subplot(4,1,2);%creates a new subplot
plot(t, c);  %and plots the carrier signal.
m = 8;
f = sin((2*pi*fc*t)+(m.*sin(2*pi*fm*t)));
%generates the modulated signal by varying the frequency of the carrier
%signal according to the amplitude of the message signal. 
%This is done by multiplying the sine wave of the message signal by
%the modulation index m and adding it to the sine wave of the carrier signal.
subplot(4,1,3); 
plot(t, f);
%creates a new subplot and plots the modulated signal.
x = diff(f); y = abs(x);
%differentiates the modulated signal f to get
%the instantaneous frequency deviation, and takes 
%the absolute value to rectify the signal.
[b,a]=butter(4, 0.07); 
de_mod = filter(b, a, y); 
%filters the rectified signal using a 4th 
%order Butterworth lowpass filter with a cutoff frequency of 0.07,
%to extract the message signal.
subplot(4,1,4); 
plot(de_mod); 
%creates a new subplot and plots the demodulated signal.