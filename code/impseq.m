function [x, n]= impseq(n0, n1, n2)
% Generate impulse x(n) = delta (n-n0);
%                              n1 <= n <=n2
%                              n0 = position of impulse
% [x, n]= impseq(n0, n1, n2)
% plot --> stem(n,x)

if ((n0 < n1) | (n0 > n2) | (n1 > n2))
	error('arguments must satisfy n1 <= n0 <= n2')
end

 n=n1:n2; 
 x = [(n-n0) == 0];