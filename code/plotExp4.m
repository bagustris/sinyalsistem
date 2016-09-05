% Sinyal eksponensial kompleks umum
t=linspace(0,10,100);
y=4*exp(0.5*t).*cos(2*pi*t);     
%y=y1*y2';
plot(t,y, 'r', 'linewidth', 2);