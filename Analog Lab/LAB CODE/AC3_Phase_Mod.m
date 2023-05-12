clc;
clear all;
close all;

fm = 10;
fc = 100;
mp = 5;

time = 0:0.0001:0.50;
message_signal = sin(2*pi*fm*time);
subplot(3,1,1);
plot(time, message_signal, 'black');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;

carrier_signal = sin(2*pi*fc*time);
subplot(3,1,2);
plot(time, carrier_signal, 'black');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

modulated_signal = sin(2*pi*fc*time + (mp*sin(2*pi*fm*time)));
subplot(3,1,3);
plot(time, modulated_signal, 'black');
xlabel('Time');
ylabel('Amplitude');
title('Phase Modulated Signal');
grid on;