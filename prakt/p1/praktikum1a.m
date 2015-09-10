% praktikum1a.m
% Tentukan zero-input response dari persamaan berikut:
% y[n] = y[n-1] + 2y[n-2] + x[n-2]
% x[n] = 4 cos [phi(n/8)], y[0]=1; y[1]=1
% output=y, input=x 

y=[1 1];    % y(0)=1, y(1)=1 y(n)=...
x(1) = 4;   %   
x(2) = 4 *cos(pi/8);

for n = 3:11;   %x(n)
    n1 = n - 1;
    x(n) = 4*cos(pi*n1/8);
    y(n) = y(n-1)+2*y(n-2)+x(n-2);
end

stem(y);
xlabel('n');
ylabel('y(n)');
title('system output y(n)');
