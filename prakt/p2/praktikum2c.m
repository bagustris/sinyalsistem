% Praktikum 2c : Speech enhancement
% Penerapan speech signal enhancement
[Y, Fs] = wavread('../sinyal/aiueo.wav');

% Bila ingin mengetahui suara, hilangkan tanda
% comment-out percent
sound (Y, Fs)
pause(1)

% untuk tahap berikutnya jangan lupa comment-out line
% diatas.

derau = randn(length(Y), 1);
Y_noise = Y + 0.08*derau;

% Bila ingin mengetahui suara, hilangkan tanda
% comment-out percent
sound(Y_noise, Fs)
pause(1)

satu = ones(4,1);
Y_conv = conv(satu, Y_noise);
sound(Y_conv, Fs)

% Tugas
% 1. Dekomposisi sinyal menjadi A, I, U, E, O
% 2. Hilangkan random noise pada sinyal diatas
% 3. Hitung SNR enhanced signal
