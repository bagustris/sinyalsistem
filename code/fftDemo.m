% fftDemo: verybasic demo of fft

x = [1 1 zeros(1,30)];
n = [0: length(x)-1];
N = 32;
a = (1/N)*fft(x);

subplot(311); stem(n,x);
subplot(312); stem(real(a));
subplot(313); stem(imag(a));

