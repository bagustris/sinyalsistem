load laughter
x=y;    
Ex1 = sum(x .* conj(x)); % one approach
Ex2 = sum(abs(x) .^ 2); % another approach

stem(Ex1)