% demoed some plotting with symbolic
% bagus@ep.its.ac.id

syms t

figure(1); ezplot(heaviside(-t)*exp(-t), [-2, 2])
figure(2); ezplot(heaviside(t)*exp(-t), [-2, 2])
figure(3); ezplot(heaviside(t+1)*exp(-t), [-2, 2])