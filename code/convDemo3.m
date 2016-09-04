% demo simple numerical convolution
T=0.1;
t=0:T:2;
h=(t>=0) - (t>2);
x=(t>=0) - (t>1);

% The convolution of the two pulses is then performed with:
y=T*conv(h,x);

subplot(311); stem(t,h)
subplot(312); stem(t,x)
subplot(313); plot(0:T:4, y);