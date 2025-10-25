n = 0:20;

x1 = rand(1, length(n)); % Τυχαίο σήμα χ2
x2 = rand(1, length(n)); % Τυχαίο σήμα χ2

% Υπολογισμός DTFT για το συνδυασμό σημάτων
combined_dft = fft(4 * x1 + 5 * x2);

% υπολογισμός DFFT για το κάθε σήμα ξεχωριστά  
dft_x1 = 4 * fft(x1);
dft_x2 = 5 * fft(x2);

% Πρόσθεση επιμέρους DTFT 
sum_dfts = dft_x1 + dft_x2;

subplot(2,1,1);
stem(abs(combined_dft));
title('DFT of Combined Sequence (\alpha x_1[n] + \beta x_2[n])');

subplot(2,1,2);
stem(abs(sum_dfts));
title('Sum of Individual DFTs (\alpha DFT(x_1[n]) + \beta DFT(x_2[n]))');
