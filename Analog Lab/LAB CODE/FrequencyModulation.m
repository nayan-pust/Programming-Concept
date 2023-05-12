
%Frequency Modulation - A comment describing the purpose of the code.

clc;  %Clears the %command window.

clear all; %- Clears all variables from the workspace.

%for modulating signal - A comment describing the next set of lines that generate the modulating signal.

Vm=5; %- Assigns the amplitude of the modulating signal as 5.

fm=30;% - Assigns the frequency of the modulating signal as 30 Hz.

t= 0 : 0.0001 : 0.2;% - Creates a time vector t from 0 to 0.2 seconds with a step size of 0.0001 seconds.

Sm=Vm*cos(2*pi*fm*t); %- Calculates the modulating signal waveform as a cosine wave with a frequency of fm Hz, and amplitude Vm. The variable Sm is a vector that contains the modulating signal values for each time t.

subplot(3,1,1)% - Divides the figure into three subplots and selects the first subplot.

plot(t,Sm) %- Plots the modulating signal waveform Sm against the time t.

title('Frequency modulating signal') %- Sets the title of the first subplot as "Frequency modulating signal".

xlabel('t --->>') %- Sets the x-axis label of the first subplot as "t --->>".

ylabel(' Amplitude'); %- Sets the y-axis label of the first subplot as "Amplitude".

% for carrier signal - A comment describing the next set of lines that generate the carrier signal.

Vc=5; %- Assigns the amplitude of the carrier signal as 5.

fc=fm*15;% - Assigns the frequency of the carrier signal as 15 times the frequency of the modulating signal (fm).

Sc=Vc*sin(2*pi*fc*t); %- Calculates the carrier signal waveform as a sine wave with a frequency of fc Hz, and amplitude Vc. The variable Sc is a vector that contains the carrier signal values for each time t.

subplot(3,1,2) %- Selects the second subplot.

plot(t,Sc,'r')% - Plots the carrier signal waveform Sc against the time t.

title('Carrier signal')% - Sets the title of the second subplot as "Carrier signal".

xlabel('t --->>')% - Sets the x-axis label of the second subplot as "t --->>".

ylabel(' Amplitude');% - Sets the y-axis label of the second subplot as "Amplitude".

%for modulated signal - A comment describing the next set of lines that generate the modulated signal.

mi=5; %- Assigns the modulation index as 5.

V=Vc*sin( 2* pi* fc* t+ mi.* sin(2 *pi *fm *t)); %- Calculates the modulated signal waveform by multiplying the carrier signal Sc with sin( 2* pi* fc* t+ mi.* sin(2 *pi *fm *t)).
%The modulating signal Sm is used to modulate the frequency of the carrier wave by varying the instantaneous


subplot(3,1,3) %sets up the subplot window to show the modulated signal, which will be the third plot (in the third row) in a 3-row, 1-column grid of plots.

plot(t,V,'y')% plots the modulated signal against the time axis 't' in the same figure window.

title('Modulated signal (FM)') %adds a title to the plot, labeling it as the modulated signal with the modulation technique used (Frequency Modulation).

xlabel('t --->>')% labels the x-axis with the text 't --->>', which represents the time.

ylabel(' Amplitude') %labels the y-axis with the text 'Amplitude', which represents the amplitude of the modulated signal.

