% sinadd2

clear all; close all; clc;

t=-30:0.01:30;
f1=cos(t)+cos(1.4*t);
f2=cos(t)+cos(sqrt(2)*t);

subplot(211); plot(t,f1)
subplot(212); plot(t,f2)