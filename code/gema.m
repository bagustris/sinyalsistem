% gema.m: Demoed gema/echo
% add echo with following difference equation:
% x[n] = y[n] + αy[n − D], |α| < 1


[y, Fs]=wavread('../sinyal/fena_16k.wav'); % the signal is in y and sampling freq in Fs
% sound(y,Fs); pause(10); % Play the original sound
alpha = 0.9; D = 4196; % Echo parameters
b = [1,zeros(1,D),alpha]; % Filter parameters
x = filter(b,1,y); % Generate sound plus its echo
sound(x,Fs); % Play sound with echo