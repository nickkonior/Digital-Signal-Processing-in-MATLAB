n = 0:40;

% πρώτο μέρος σήματος
x1 = 2 * cos(pi * n / 8);

% θόρυβος
w = randn(size(n));

% δημιουργία σήματος χ
x = x1 + w;

y = zeros(size(n));

% Υπολογισμός του υ
for i = 1:length(n)
    y(i) = (1/4) * sum(x(max(1, i-3):i));
end

% Σχεδίαση των σημάτων
figure;
subplot(3,1,1);
plot(n, w);
title('Gaussian Noise w[n]');

subplot(3,1,2);
plot(n, x);
title('Noisy Signal x[n]');

subplot(3,1,3);
plot(n, y);
title('Output Signal y[n]');
