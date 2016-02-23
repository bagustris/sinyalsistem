%Konvolusi sinyal sinus bernoise dengan raised cosine;
n=-7.9:.5:8.1;
y=sin(4*pi*n/8)./(4*pi*n/8);
figure(1);
plot(y,'linewidth',2)
t=0.1:.1:8;
x=sin(2*pi*t/4);
figure(2);
plot(x,'linewidth',2)

%Tambahkan noise pada sinyal sinus.
t=0.1:.1:8;
x_n=sin(2*pi*t/4)+0.5*randn*sin(2*pi*10*t/4) + ...
    0.2*randn*sin(2*pi*12*t/4);
figure(3);
plot(x_n,'linewidth',2)

%Konvolusikan keduanya
xy=conv(x_n,y);
figure(4);
plot(xy,'linewidth',2)