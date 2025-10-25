n1 = -5:-1;
n2 = 0:2;
n3 = 3:10;

y1 = 3*n1;
y2 = exp(n2);
y3 = sqrt(24);

hold on;
stem(n1, y1);
stem(n2, y2);
stem(n3, y3*ones(size(n3)));
hold off;