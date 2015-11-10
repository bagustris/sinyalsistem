% integral conv with symbolic
% x (t) = exp(-3t) * u (t),
% h (t) = u (t + 3)

syms t tau

x=heaviside(t)*exp(-3*t);
h=heaviside(t+3);

intKonv=int(exp(-3*tau), 'tau', 0, t+3)

figure(1)
subplot(211); ezplot(x, [-2 2])
subplot(212); ezplot(h, [-5 5])

figure(2)
subplot(211);   ezplot(intKonv, [-2 10])

y=heaviside(t+3)*1/3*(1-exp(-3*(t+3)));

subplot(212); ezplot(y, [-2 10])