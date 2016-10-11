% jumlahanKonv.m : Demo jumlahan konvolusi
% bagus@ep.its.ac.id

clc; clear all; close all;
x=[0 1 2];
y=[0.5 2 0];

%x2=[0 1 2];
h=[1 1 1];

subplot(311); stem(x,y);
subplot(312); stem(x,h);

% Konvolusi
z=conv(y,h);
x2=[0 1 2 3 4];
subplot(313); stem(x2, z);