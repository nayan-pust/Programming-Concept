clc;
clear all; 
t = 0: 0.0001: .2; creates a time vector with a time step of 0.0001 seconds, ranging from 0 to 0.2 seconds.
Vm = 3; Vc = 3; fm = 7; fc = 50; sets the message signal amplitude Vm, carrier signal amplitude Vc, message signal frequency fm, and carrier signal frequency fc.
m = 25; v = Vm*sin(2*pi*fm*t); generates the message signal, which is a sinusoidal signal with a frequency of 7 Hz and an amplitude of 3.
subplot(3,1,1); plot(t,v); creates a new subplot and plots the message signal.
c = Vc*sin(2*pi*fc*t); generates the carrier signal, which is a sinusoidal signal with a frequency of 50 Hz and an amplitude of 3.
subplot(3,1,2); plot(t,c); creates a new subplot and plots the carrier signal.
p = Vc*sin((2*pi*fc*t) +( m.* v)); generates the phase modulated signal, where the phase of the carrier signal is varied in proportion to the amplitude of the message signal. This is done by multiplying the message signal v by the modulation index m and adding it to the phase of the carrier signal.
subplot(3,1,3); plot(t,p); creates a new subplot and plots the phase modulated signal.