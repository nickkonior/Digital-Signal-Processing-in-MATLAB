b = [1 0 -0.7]; 
a = [1 -0.4];   

% Compute and plot the impulse response using impz
[h, nh] = impz(b, a, 41);  % Compute the impulse response for 41 samples
stem(nh, h);
title('h[n]');
xlabel('n');
ylabel('h[n]');
