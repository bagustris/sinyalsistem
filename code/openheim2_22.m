t=[0:0.1:2];
y=sin(t);

x=[0 1 2 3 4];
h=[0 1 1 1 0];

z=conv(y,h);
plot(z)