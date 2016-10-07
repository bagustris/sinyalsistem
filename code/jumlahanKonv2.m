## Copyright (C) 2016 bagustris
## Author: bagustris <bagus@ep.its.ac.id>
## Created: 2016-10-07

clear all; close all; clc;
x=[-7 -6 -5 -4 -3 -2 -1 0];
y=ones(1, length(x));
z=(-1).^x.*y;               %(-1)^n*u[-n]-u[-n-8]

x2=[0 1 2 3 4 5 6 7];
h=ones(1, length(x2));  %u[n]-u[n-8]

x3=linspace(-7,7,15);
a=conv(z,h);

subplot(311); stem(x,z);
subplot(312); stem(x2,h);
subplot(313); stem(x3,a);