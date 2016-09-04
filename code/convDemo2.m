% convDemo: simple convolution demo

x = [3, 11, 7, 0, -1, 4, 2];
h = [2, 3, 0, -5, 2, 1];

y=conv(x,h);

subplot(311); stem(x)
subplot(312); stem(h)
subplot(313); stem(y)