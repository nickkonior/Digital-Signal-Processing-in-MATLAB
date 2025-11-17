n = -20:20;

% Input signal
x = 2 * (n == 1) + 4 * (n == -1) + 9 * (n == -2);

% Malloc memory for output
y = zeros(size(n));

% Arange the parameters for the Differential EQ
a1 = -0.4;
b0 = 1; 
b2 = 0.7;

% output = DEQ(input) 
for i = 3:length(n)
    y(i) = b0*x(i) + a1*y(i-1) + b2*x(i-2);
end

stem(n, y);
title('Output');
xlabel('n');
ylabel('y[n]');
