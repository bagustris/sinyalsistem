% define model 
f1 = 1100;              % frequency of tone generator 1; unit: Hz 
f2 = 2900;              % frequency of tone generator 2; unit: Hz 
Ts = 1/(40*max(f1,f2)); % sampling period; unit: s 
dMic = 1;               % distance between microphones centered about origin; unit: m 
dSrc = 10;              % distance between tone generators centered about origin; unit: m 
c = 340.29;             % speed of sound; unit: m / s 

% generate tones
figure(1);
t = [0:Ts:0.025];
tone1 = sin(2*pi*f1*t);
tone2 = sin(2*pi*f2*t);
plot(t,tone1); 
hold on;
plot(t,tone2,'r'); xlabel('time'); ylabel('amplitude'); axis([0 0.005 -1 1]); legend('tone 1', 'tone 2');
hold off;

% mix tones at microphones
% assume inverse square attenuation of sound intensity (i.e., inverse linear attenuation of sound amplitude)
figure(2);
dNear = (dSrc - dMic)/2;
dFar = (dSrc + dMic)/2;
mic1 = 1/dNear*sin(2*pi*f1*(t-dNear/c)) + 1/dFar*sin(2*pi*f2*(t-dFar/c));
mic2 = 1/dNear*sin(2*pi*f2*(t-dNear/c)) + 1/dFar*sin(2*pi*f1*(t-dFar/c));
plot(t,mic1);
hold on;
plot(t,mic2,'r'); xlabel('time'); ylabel('amplitude'); axis([0 0.005 -1 1]); legend('mic 1', 'mic 2');
hold off;

% use svd to isolate sound sources
figure(3);
x = [mic1' mic2'];
[W,s,v]=svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x');
plot(t,v(:,1));
hold on;
maxAmp = max(v(:,1));
plot(t,v(:,2),'r'); xlabel('time'); ylabel('amplitude'); axis([0 0.005 -maxAmp maxAmp]); legend('isolated tone 1', 'isolated tone 2');
hold off;