% sinDemo.m : demo of amplitude, magnitude and power.

n=0:0.2:2*pi;
y= sin(n);

% amplify amplitude
amp=2;
yn=amp*y;

% magnitude
x=abs(y);

% power
z=y.^2;

% plot
subplot(411); stem(y);
subplot(412); stem(yn);
subplot(413); stem(x);
subplot(414); stem(z);