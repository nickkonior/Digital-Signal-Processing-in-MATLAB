n = 0:50;

% Calculate the step response s[n]
s_n = 1 - 0.5.^n;

% Plot the step response
stem(n, s_n);
title('Step Response of the System');
xlabel('n');
ylabel('s[n]');
