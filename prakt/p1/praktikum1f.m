% x(n) = u(n) − u(n − 10)
% h(n) = (0.9) n u(n)
% Determine y(n) = x(n) ∗ h(n).

clear all; close all;

% solusi dengan filter
b = [1]; 
a = [1,-0.9];
n = -5:50; x = stepseq(0,-5,50) - stepseq(10,-5,50);
y = filter(b,a,x);
figure(1)
subplot(2,1,1); stem(n,x); title('Input sequence')
subplot(2,1,2); stem(n,y); title('Output sequence')
xlabel('n'); ylabel('y(n)'); axis([-5,50,-0.5,8])

% solusi dengan conv
for t = 1:10
    n1(t) = t-1;
    h(t) = (0.9)^n1(t);
end

z=conv(h,x);
figure(2); 
stem(z)
