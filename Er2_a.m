n = -21:20;

y = 2 * heaviside(n - 6) - 8 * (n == 5);

% Plot the signal y[n]
stem(n, y);
xlabel('n');
ylabel('y[n]');
title('Plot of y[n] = 2u[n-6] - 8δ[n-5]');