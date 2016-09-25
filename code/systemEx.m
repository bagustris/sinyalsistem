n = 0:10;
x = ones(size(n));
x(1) = 0;
y(1) = 0;
for i=2:11
    y(i) = (y(i-1) + x(i))/2;
end
% plot(n, x, 'x', n, y, '.')
stem(n, x, 'g', 'linewidth', 2); hold on; 
stem(n, y, 'r', 'linewidth', 2); hold off;
