% Περίοδος σημάτων
T1 = 10;
T2 = 20;
T3 = 200;

% για χρόνο 2 φορές την περίοδο
n1 = -T1:T1;
n2 = -T2:T2;
n3 = -T3:T3;

% Αρχικά σήματα
x1 = cos(0.2*pi*n1 + pi/3);
x2 = cos(0.1*pi*n2 + pi/4);
x3 = cos(0.01*pi*n3 + pi/5);

% Μετατροπή σημάτων για y,z όπου περίοδος γίνεται το ΕΚΠ
x12 = cos(0.2*pi*n2 + pi/3);
x23 = cos(0.1*pi*n3 + pi/4);
x13 = cos(0.2*pi*n3 + pi/3);

% Παράγωγα σήματων
y = x12 + x2;
z = x13 + x23 + x3;

% Σχεδίαση
subplot(5,1,1);
plot(n1, x1);
title('x1[n]');

subplot(5,1,2);
plot(n2, x2);
title('x2[n]');

subplot(5,1,3);
plot(n3, x3);
title('x3[n]');

subplot(5,1,4);
plot(n2, y);
title('y[n] = x1[n] + x2[n]');

subplot(5,1,5);
plot(n3, z);
title('z[n] = x1[n] + x2[n] + x3[n]');
