% corrDemo.m : Demo of correlation
% x(n) --> sinyal
% y(n) = x(n − 2) + w(n)
% w(n)
x = [3, 11, 7, 0, -1, 4, 2];    nx=[-3:3]; % given signal x(n)
[y,ny] = sigshift(x,nx,2);      % obtain x(n-2)
w = randn(1,length(y)); nw = ny;% generate w(n)
[y,ny] = sigadd(y,ny,w,nw);     % obtain y(n) = x(n-2) + w(n)
[x,nx] = sigfold(x,nx);         % obtain x(-n)

rxy=xcorr(x,y);
rxx=xcorr(x);
subplot(211); stem(rxy)
subplot(212); stem(rxx)