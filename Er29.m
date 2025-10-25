n = -5000:5000;

%Χρησιμοποιούμε την συνάρτηση heaviside για την δημιουργία του σήματος
u = heaviside(n);

stem(n, u, '.');
title('Unit Step Function u[n]');
xlabel('n');
ylabel('u[n]');
axis([-5000 5000 0 1.2]);

% Υπολογισμός της ισχύς του σήματος 
power = sum(u.^2) / length(u);
disp(['Power of the signal u[n]: ', num2str(power)]);
