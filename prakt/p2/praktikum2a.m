% Fenomena Gibb

clear all; clc
t=linspace(-2,2,2000);
u=linspace(-2,2,2000);
sq=[zeros(1,500),2*ones(1,1000),zeros(1,500)];
k=2;
%=[1,3,7,19,49,70];     % comment salah satu
N=[1,10,100,1000,10000,100000];

for n=1:6;
an=[];
for m=1:N(n)
    an=[an,2*k*sin(m*pi/2)/(m*pi)];
end;

fN=k/2;

for m=1:N(n)
    fN=fN+an(m)*cos(m*pi*t/2);
end;

nq=int2str(N(n));
subplot(3,2,n),plot(u,sq,'r','LineWidth',2);
hold on;
plot(t,fN,'LineWidth',2); hold off; axis([-2 2 -0.5 2.5]);grid;
xlabel('Time'), ylabel('y_N(t)');title(['N= ',nq]);
end;
