n = 0:300;

% Define the input signal x[n] as the unit step function u[n]
x = ones(size(n)); % x[n] = u[n]

% Compute the system's output y[n]
y = x + [0, x(1:end-1)]; % y[n] = x[n] + x[n-1]

% Plot the system's output y[n]
figure;
plot(n, y);
title('System Output y[n]');
xlabel('n');
ylabel('y[n]');

% Analyze the frequency response of the system using freqz
% The impulse response h[n] for freqz is [1 1] since y[n] = x[n] + x[n-1]
[b, a] = freqz([1 1], 1);

% Plot the frequency response
figure;
freqz([1 1], 1, length(n), 'whole');
title('Frequency Response of the System');
