n = -12:12;

% Δημιουργία της κρουστικής απόκρισης h[n]
h = sqrt(8*abs(n)).*2 .* gauspuls(n + 4) + heaviside(n + 1) - 3*heaviside(n - 2);

% Δημιουργία του σήματος εισόδου x[n]
x = 4*gauspuls(n+3) + 2*gauspuls(n) - gauspuls(n-1) + 5*gauspuls(n-3);

% Σήμα συνέλιξης με όρισμα "same" για να κεντριστούν τα σήματα
y = conv(x, h, 'same'); 

% Σχεδιασμός σήματος
stem(n, y);
title('System Output y[n] = x[n] * h[n]');
xlabel('n');
ylabel('y[n]');
