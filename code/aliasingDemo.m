% start with a continuous-time cosine signal at 60 Hz.
% from: http://blogs.mathworks.com/steve/2010/03/03/aliasing-and-a-sampled-cosine-signal/

% Signal spesification
f = 60;  % Hz
tmin = -0.05;
tmax = 0.05;
t = linspace(tmin, tmax, 400);
x_c = cos(2*pi*f * t);
figure(1); plot(t,x_c)
xlabel('t (seconds)')

% Let's sample with a sampling frequency of 800 Hz. 
T = 1/800;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
figure(2); 
subplot(411);
plot(t,x_c)
hold on
plot(n*T,x1,'.')
hold off

% with 400 Hz
T = 1/400;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
subplot(412); 
plot(t, x_c)
hold on;
plot(n*T, x1, '.')
hold off

% sampled with lower frequency
T = 1/400;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
subplot(413)
plot(t, x_c)
hold on
plot(n*T, x1, '.')
hold off

% with 120 Hz
T = 1/120;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
subplot(414)
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
hold off

% Sampled with 70 Hz -- > aliasing (undersampled)
T = 1/70;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
figure(3)
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
hold on
x_c = cos(2*pi*10 * t);
plot(t, x_c, '-r')
hold off