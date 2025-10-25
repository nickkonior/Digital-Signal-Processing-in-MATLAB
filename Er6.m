function y = Er6(x, h)
    % x είναι το σήμα εισόδου 1, h το σήμα εισόδου 2

    % Δημιουργία του πίνακα Toeplitz
    h_col = [h(:); zeros(length(x)-1, 1)];  % πρώτη στήλη 
    h_row = zeros(1, length(x));            % πρώτη σειρά
    H = toeplitz(h_col, h_row);           

    % Συνέλιξη σημάτων
    y = H * x(:); 

    % Προσαρμόζουμε το αποτέλεσμα στο σωστό μέγεθος
    y = y(1:length(x) + length(h) - 1);
end
