% praktikum1a.m
% modified by bagus@ep.its.ac.id 
% Tentukan zero-input, response dari persamaan berikut:
% Zero input: the output of system with zero input (response due to initial condition) x[n]=0
% Zero state; respon ouput due to input (zero initial condition) y[0]=0
% Respon total = zi + zs;
% y[n] = y[n-1] + 2y[n-2] + x[n-2]
% x[n] = 4 cos [phi(n/8)], y[0]=1; y[1]=1
% output=y, input=x 

clear all; close all; clc;
y=[1 1];           % y(0)=1, y(1)=1 y(n)=...
x(1) = 4;          % set to 0 for zero state  
x(2) = 4*cos(pi/8);

for n = 3:21;   %x(n)
    n1 = n - 1;
    x(n) = 4*cos(pi*n/8);
    y(n) = y(n-1)+2*y(n-2) + x(n-2); % comment x[n] for zero input
end

stem(y);
xlabel('n');
ylabel('y(n)');
title('System output y(n)');
