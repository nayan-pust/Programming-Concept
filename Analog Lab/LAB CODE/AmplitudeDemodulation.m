clc                % clears the command window
clear all;         % clears all variables from memory
close all;         % closes all figures

t = 0:0.0001:0.2;  % creates a time vector from 0 to 0.2 seconds with a step size of 0.0001 seconds

fm = 20;           % frequency of the message signal
m_t = cos(2*pi*fm*t);  % generates the message signal as a cosine wave with frequency fm
subplot(5, 1, 1);  % sets up a subplot of 5 rows and 1 column and selects the first subplot
plot(t, m_t);      % plots the message signal
title('Message signal'); xlabel('Time-->>'); ylabel('Amplitude-->');

fc = 500;          % frequency of the carrier signal
m_c = cos(2*pi*fc*t);  % generates the carrier signal as a cosine wave with frequency fc
subplot(5, 1, 2);  % selects the second subplot
plot(t, m_c);      % plots the carrier signal
title('Carrier signal'); xlabel('Time-->>'); ylabel('Amplitude-->');

ka = 1;            % modulation index
v_1 = (1 + ka * m_t) .* m_c;  % generates the AM signal
subplot(5, 1, 3);  % selects the third subplot
plot(t, v_1);      % plots the AM signal
title('AM wave'); xlabel('Time-->>'); ylabel('Amplitude-->');

v = v_1 + (v_1 .* v_1);  % output's equation of the square-law device
subplot(5, 1, 4);  % selects the fourth subplot
plot(t, v);        % plots the output of the square-law device
title('Output of the square law device'); xlabel('Time-->>'); ylabel('Amplitude-->');

F = fir1(100, 0.001, 'low');  % creates a low-pass filter with cutoff frequency of 0.001
am_demodulation = filter(F, 2, v);  % filters the output of the square-law device using the low-pass filter
subplot(5, 1, 5);  % selects the fifth subplot
plot(t, am_demodulation);  % plots the demodulated signal after low-pass filtering
title('Demodulated signal, after using low pass filter');
xlabel('Time-->>'); 
ylabel('Amplitude-->');
