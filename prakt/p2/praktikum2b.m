% praktikum 2b.m : Konvolusi dan FIR

clear all;
T=1000;
LPF_01=fir1(16,0.2,'low')
t=1/T:1/T:1;
y=sin(2*pi*t);
tt=length(y);
nois=0.1*randn(1,tt);
y_n = y + nois;
subplot(2,1,1);
plot(t,y_n,'linewidth',2)
axis([0 1.05 -1.5 1.5])
xlabel('Waktu (dt)')
grid on

% konvolusi FIR filter dengan sinyal dan noise
y_filter=conv(y_n,LPF_01);
subplot(2,1,2);
t_yfil=length(y_filter);
t=1/T:1/T:t_yfil/T;
plot(t,y_filter,'linewidth',2)
axis([0 1.05 -1.5 1.5])
xlabel('Waktu (dt)')
grid on
