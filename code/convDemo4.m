% demo konvolusi

x=[0 1 2 3 4];
y=[1 3 2 1 3];

h=[1 0 2 0 0];

z=conv(y,h);
x2=linspace(0,8,9);

subplot(311); stem(x,y);
subplot(312); stem(x,h);
subplot(313); stem(x2,z);