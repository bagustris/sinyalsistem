% solution for 
% y[n+1] – 2y[n] = x[n]
% with zero state

a=[1 -2];
b=[1];
n=1:20;

h=impz(b,a,n);
stem(n,h)