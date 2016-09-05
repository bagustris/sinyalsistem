t=linspace(0,10,100);
y=5*exp(0.5*t);     %0.5=koef exp, ganti ke negatif untuk meluruh
stem(t,y, 'r', 'linewidth', 2);