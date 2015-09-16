% start with a continuous-time cosine signal at 60 Hz.
% from: http://blogs.mathworks.com/steve/2010/03/03/aliasing-and-a-sampled-cosine-signal/

f = 60;  % Hz
tmin = -0.05;
tmax = 0.05;
t = linspace(tmin, tmax, 400);
x_c = cos(2*pi*f * t);
plot(t,x_c)
xlabel('t (seconds)')

% Let's sample with a sampling frequency of 800 Hz. 
T = 1/800;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
hold on
plot(n*T,x1,'.')
hold off

T = 1/400;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, '.')
hold off

% sampled with lower frequency
T = 1/400;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, '.')
hold off

T = 1/120;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
hold off

% with 70 Hz
T = 1/70;
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
hold off

% Now look
T = 1/70;
x_c = cos(2*pi*10 * t);
nmin = ceil(tmin / T);
nmax = floor(tmax / T);
n = nmin:nmax;
x1 = cos(2*pi*f * n*T);
plot(t, x_c)
hold on
plot(n*T, x1, 'o')
hold off