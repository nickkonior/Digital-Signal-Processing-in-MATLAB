n = -10:10;

% Compute the shifted unit step functions directly
u1 = heaviside(n + 1);  % u[n+1]
u2 = heaviside(n - 3); % u[n-3]

% Compute the response y[n] using the difference equation
y = 3 * u1 - u2;

% Plot the system's output y[n]
stem(n, y);
title('Response of the System to Unit Step Input u[n]');
xlabel('n');
ylabel('y[n]');
