% sin add: demo two sin with different freq.
% bagus@ep.its.ac.id 29/11/2015

clear all; close all; clc

t=0:0.01:5;
y1=cos(2*pi*t);
y2=cos(4*pi*t)/2;

y=y1+y2;

subplot(311); plot(t,y1);
subplot(312); plot(t,y2);
subplot(313); plot(t,y);
axis([0 4 -1 2]);
