% Define the range of n for our signals
n = -12:12;

% Define the Kronecker delta vector
delta_n = zeros(size(n));
delta_n(n == -1) = 4; % delta[n + 1]
delta_n(n ==  0) = 9; % delta[n]
delta_n(n ==  2) = -2; % delta[n - 2]

% Define x[n] using the Kronecker delta vector
x = delta_n;

% Define the unit step vector
u_n = double(n >= 0);

% Define y[n] using the unit step vector
y = ((n/6).^2) .* (u_n - [zeros(1,3), u_n(1:end-3)]);

% Convolution using the custom Toeplitz function from Exercise 6
% (Make sure to define the 'toeplitz_convolution' function in your MATLAB environment)
z_toeplitz = Er6(x, y);

% Convolution using MATLAB's built-in conv function
z_conv = conv(x, y, 'same');

% Plot the signals and their convolutions
figure;

subplot(3,1,1);
stem(n, x);
title('Signal x[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(n, y);
title('Signal y[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,3);
stem(n, z_toeplitz);
hold on;
stem(n, z_conv, 'r*');
title('Convolution of x[n] and y[n] using Toeplitz (blue) and conv (red)');
xlabel('n');
ylabel('Amplitude');

legend('Toeplitz Convolution', 'MATLAB conv');
