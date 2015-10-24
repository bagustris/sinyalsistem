% set general variables
sf = 22050;  % sample frequency
nf = sf / 2; % nyquist frequency
d = 1.0;     % duration
n = sf * d;  % number of samples
nh = n / 2;  % half number of samples
% =========================================================================

% select filter
while 1
    clc;
    v = input('lowpass(1), highpass(2), bandpass(3), notch(4) ? ');
    if v >= 1 & v <= 4;
        break
    end
end

% =========================================================================
% set variables for filter
lf = 2000;   % lowest frequency
hf = 4000;   % highest frequency
lp = lf * d; % ls point in frequency domain    
hp = hf * d; % hf point in frequency domain

% design filter
clc;
switch v
    case 1
    a = ['LOWPASS'];
    filter = zeros(1, n);           % initializaiton by 0
    filter(1, 1 : lp) = 1;          % filter design in real number
    filter(1, n - lp : n) = 1;      % filter design in imaginary number
    case 2        
    a = ['HIGHPASS'];
    filter = ones(1, n);            % initializaiton by 1
    filter(1, 1 : hp) = 0;          % filter design in real number
    filter(1, n - hp : n) = 0;      % filter design in imaginary number
    case 3
    a = ['BANDPASS'];
    filter = zeros(1, n);           % initializaiton by 0
    filter(1, lp : hp) = 1;         % filter design in real number
    filter(1, n - hp : n - lp) = 1; % filter design in imaginary number
    case 4
    a = ['NOTCH'];
    filter = ones(1, n);
    filter(1, lp : hp) = 0;
    filter(1, n - hp : n - lp) = 0;
end

% =========================================================================
% make noise
rand('state',sum(100 * clock));  % initialize random seed
noise = randn(1, n);             % Gausian noise
noise = noise / max(abs(noise)); % -1 to 1 normalization

% do filter
s = fft(noise);                  % FFT
s = s .* filter;                 % filtering
s = ifft(s);                     % inverse FFT
s = real(s);
% =========================================================================

% play noise
disp('WHITE noise');
sound(noise, sf);                % playing sound
pause(d + 0.5);                  % waiting for sound end

% play filtered noise
clc;
disp([a, ' noise']);
sound(s, sf);              % playing sound
pause(d + 0.5);                  % waiting for sound end

% =========================================================================
% plot sound
x = linspace(0, d, n);
subplot(2,2,1); plot(x, noise); xlabel('time (s)'); title('sound: noise');               
subplot(2,2,2); plot(x, s); xlabel('time (s)'); title('sound: filtered noise');

% plot Fourier spectrum
x = linspace(0, nf, nh);
t = fft(noise);
t = t .* conj(t);
subplot(2,2,3); semilogy(x, t(1,1:nh) ./ max(t));  xlabel('frequency (Hz)'); title('spectrum: noise'); 
t = fft(s);
t = t .* conj(t);
subplot(2,2,4); semilogy(x, t(1,1:nh) ./ max(t));  xlabel('frequency (Hz)');  title('spectrum: filtered noise'); 

figure(1);