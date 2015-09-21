% Praktikum1c.m

% Solving with z-transform
syms z, 
Gz=z/(z^2-(1/4)*z-1/8);     % system function
g = iztrans(Gz)             % symbolic inverse z transform
N=16; 
nn=[0:N-1];

for n=0:N-1
    gn(n+1) = eval(g); 
end

% Solving the difference equation with the unit impulse input
B= [1 0]; 
A= [1 -1/4 -1/8]; % numerator/denominator
NB=length(B); 
NA=length(A);
xn = [0 1 zeros(1,N-1+NB)]; % x[n-1] impulse input delayed by one sample
y = zeros(1,NA-1);          % Initial condition

for m=NA:NA+N-1             % To solve the difference equation iteratively
    y(m)= -A(2:NA)*y(m-[1:NA-1]).' +B*xn(m-NA+[1:NB]).';
end
    
y = y(NA:NA+N-1);           % response

% Solving using filter()
yp=[0 0]; xp=0;             % Initial condition from past history
w0=filtic(B,A,yp,xp);    
yn = filter(B,A,xn,w0);      % respon with zero initial condition by default

subplot(311);   stem(nn,gn)
subplot(312);   stem(nn,y,'r')
subplot(313);   stem(nn,yn(1:N),'k.')
