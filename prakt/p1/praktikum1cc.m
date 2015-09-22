% y[n+1] – 2y[n] = x[n]
% y[0]=0;	y[1]=1;
% bagus@ep.its.ac.id

clear all;
y=[0 1];

for n=1:10;
    n1=n-1;
    x(n)=4*cos(pi*n1/8);
    y(n+1)=2*y(n)+x(n);
end
stem(y)
