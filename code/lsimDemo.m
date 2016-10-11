% lsimDemo: lsim with differential eq
% simulate output of cont. LTI described by liner constat eq
% \sigma a_k \dfrac{d^ky(t)}{dt^k}= \sigma b_m \dfrac{d^mx(t)|{dt^m}

clear all; close all; clc;
t = [0 1 2 5 8 9 10];
x = [0 0 0 3 0 0 0 ];
plot(t,x);
