% convDemo2.m : Demo of convolution
x = rand(1,10); % A random signal of length 10
h = [0.5 0.5]; % An impulse response
y = conv(x, h);% Convolution operation

subplot(311)
stem(0:length(x)-1, x,'*')
axis([-1 length(y) 0 1])
subplot(312)
stem(h)
axis([-1 length(y) 0 1])
subplot(313)
stem(0:length(y)-1,y,'*')
axis([-1 length(y) 0 1])