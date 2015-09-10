% Praktikum1b.m
% Tentukan output dari y(n), dimana 0 < n < 10 dari system LTI dengan
% input x(n) = (0.8) n [u(n)-u(n-5)] dan impulse response h(n)= (0.5) n [u(n)-
% u(n-10)]

for n = 1:10
n1(n) = n-1;
h(n) = (0.5)^n1(n);
end

for n = 1:5
n2(n) = n-1;
x(n) = (0.8)^n2(n);
end

y1 = conv (h,x);
y2 = conv (x,h);

% n4 = size(n1)+size(n2)-1;
% n4 = 14;
% n3 = 0:n4-1;

subplot(4,1,1); stem(x);
subplot(4,1,2); stem(h);
subplot(4,1,3); stem(y1);
subplot(4,1,4); stem(y2)