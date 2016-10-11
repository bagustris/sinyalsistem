% praktikum 1d.m
% sistem: y(n) − y(n − 1) + 0.9y(n − 2) = x(n)
% tentukan: impulse response, step response, stabil/tidak
% zero-state: initial condition = 0
% Berdasarkan persamaan sistem maka koesien pers. beda

addpath('../../code')
b = [1];            % num
a =[1, -1, 0.9];    % denum
n = [-20:120];      % time interval

% impulse response
h = impz(b,a,n);
subplot(2,1,1); stem(n,h);
title('Impulse Response'); xlabel('n'); ylabel('h(n)')

% step response
x = stepseq(0,-20,120);
s = filter(b,a,x);
subplot(2,1,2); stem(n,s)
title('Step Response'); xlabel('n'); ylabel('s(n)')

% stability
stable=sum(abs(h))
z=roots(a);
magz=abs(z)
