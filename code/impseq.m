function [x, n]= impseq(n0, n1, n2)
% Generate impulse x(n) = delta (n-n0);
%                       n1 <= n <=n2
% [x, n]= impseq(n0, n1, n2)
% plot --> stem(x,n)

 n=n1:n2; 
 x = [(n-n0) == 0];