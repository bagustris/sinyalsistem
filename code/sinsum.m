
function xt = sinsum(t,ck)
% Computes sum of sinusoidal terms of the form:
% x(t)= sigma (k=1~K) c_k sin(2πkt)
% x = sinsum(t,ck)
%
K = length(ck); k = 1:K;
ck = ck(:)'; t = t(:)';
xt = ck * sin(2*pi*k'*t);