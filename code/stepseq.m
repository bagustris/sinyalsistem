function [x,n]=stepseq (n0, n1, n2)
% Generates x(n) = u(n-n0);
%           n1 <= n <=2
% ---------------------------------
% [x, n]= steseq(n0, n1, n2)
% plot --> stairs(n,x)
 
n = [n1:n2];
x = [(n-n0) >= 0];