% demo of lsim (linear simulator) for
% dy/dt = -1/2yi * (t) + x(t)

clear all; close all; clc;
t = [0:10];               % input system
x = ones(1,length(t));

b = 1;
a = [1 0.5];
sys = tf(b, a);          % transfer Function
s = lsim(sys, x, t);
plot(t, s, 'r--', 'linewidth', 2);
