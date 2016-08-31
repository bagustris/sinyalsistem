% Praktikum1b.m
% Tentukan output dari y(n), dimana 0 < n < 10 dari system LTI dengan
% input (x(n) = (0.8) ^ n) [u(n)-u(n-5)] dengan 
% impulse response h(n)= ((0.5)^n) [u(n)-u(n-10)]

clear all; close all; clc;

for n = 1:10
    n1(n) = n-1;
    h(n) = (0.5)^n1(n);
end

for n = 1:5
    n2(n) = n-1;
    x(n) = (0.8)^n2(n);
end

y1 = conv (h,x);
y2 = conv (x,h);

n3 = length(n1)+length(n2)-1;
n4 = 0:n3-1;

subplot(4,1,1); stem(n2,x);
subplot(4,1,2); stem(n1,h);
subplot(4,1,3); stem(n4,y1);
subplot(4,1,4); stem(n4,y2);