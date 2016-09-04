% two frequencies, same fs.
clear all; clf
% sinusoids
omega_0 = 1; % frekuensi sinyal x1 
omega_s = 7;    % frekuensi sinyal x2
T = 2 * pi/omega_0; 
t = 0:0.001:T; % a period of x1
x1 = cos(omega_0 * t); 
x2 = cos((omega_0 + omega_s) * t);
N = length(t); 
Ts = 2 * pi/omega_s; % sampling period
M = fix(Ts/0.001); imp = zeros(1,N);
for k = 1:M:N-1
    imp(k) = 1; % sequence of impulses
end
xs = imp .* x1; % sampled signal
plot(t,x1,'b',t,x2,'k'); hold on
stem(t,imp .* x1,'r','filled');
axis([0 max(t) -1.1 1.1]); 
xlabel('t'); grid