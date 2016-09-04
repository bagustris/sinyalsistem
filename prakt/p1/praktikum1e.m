 %   Determine the impulse response and zero input response of the following system
 %   Zero-input : initial condition exist
 %   y(n) + 1.12y(n-1) = 0.1x(n) + 0.2x(n-1) with initial condition
 %   y(-1) = 1.
 
    b = [0.1, 0.2];         % Numerator Coefficients
    a = [1, 1.12];          % Denominator Coefficients
    Y = [1];                % Initial conditions for output
    n = 1:200;
    h = impz(b,a,n);        % Impulse response, zero state
    xic = filtic(b,a,Y);    % Finding initial conditions for the system
    yzi = filter(b,a,zeros(1,200),xic)   % Zero Input response
    subplot(211);  stem(yzi);
    subplot(212);  stem(h);