% timeScal.m : Demo of time scaling

n=-20:20;
p=((n>=-10) & (n<=10));

x=(0.9.^n).*p;


% figure 1
subplot(311); stem(n,x);
title('x[n]');

% downspaled 2
xd=downsample(x,2);
nd=-10:10;

subplot(312); stem(nd,xd);
title('x[2n]');

% upsampled
xu=upsample(x,3);
nu=-61:61;

subplot(313); stem(nu,xu);
title('x[n/2]');