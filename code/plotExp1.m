t=linspace(-1,1,100);
y=1*exp(-5*abs(t));
subplot(211); plot(t,y, 'r', 'linewidth', 2);


nfft= 2^(nextpow2(length(y))); 


% Take fft, padding with zeros so that length(fftx) is equal to nfft 

fftx = fft(y,nfft); 


% Calculate the numberof unique points
NumUniquePts = ceil((nfft+1)/2); 


% FFT is symmetric, throw away second half 

fftx = fftx(1:NumUniquePts); 


% Take the magnitude of fft of x and scale the fft so that it is not a function of the length of x

mx = abs(fftx)/length(y); 


% Take the square of the magnitude of fft of x. 

mx = mx.^2; 


if rem(nfft, 2) % odd nfft excludes Nyquist point
  mx(2:end) = mx(2:end)*2;
else
  mx(2:end -1) = mx(2:end -1)*2;
end


% This is an evenly spaced frequency vector with NumUniquePts points. 
Fs=100;

f = (0:NumUniquePts-1)*Fs/nfft; 

subplot(212); plot(f, mx);