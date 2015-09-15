% shifdemo
n = -2:10;
x = [1:7,6:-1:1];

subplot(411); stem(n,x,'LineWidth',4);
title('x[n]');

[x11,n11] = sigshift(x,n,5);
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(412); stem(n11,x11, 'LineWidth',4); title('x[n-5]');
subplot(413); stem(n12,x12,'LineWidth',4); title('x[n+4]');
subplot(414); stem(n1,x1,'LineWidth',4); title('2x[n-5]-3x[n+4]');
