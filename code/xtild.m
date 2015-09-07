x= [1, 2, 3, 4, 5];
P=length(x);
xtilde = x' *ones(1,P);
xtilde = xtilde(:);
xtilde = xtilde';
stem(xtilde)