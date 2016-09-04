function [y,n] = sigshift(x, m, k)
% implements y(n) = x(n-k)
% -------------------------
% [y,n] = sigshift(x,m, k)
% for m = n−k, then n = m+k;
% y(m + k) = {x (m)}
n = m + k; 
y = x;