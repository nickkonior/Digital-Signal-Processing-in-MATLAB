function Er4(x, n)
    % Βρίσκουμε τους χρόνους για να κάνουμε το σήμα συμμετρικό καθώς το 
    % σήμα του 2β δεν είναι συμμετρικό
    n_min = min(n);
    n_max = max(n);
    
    % Όταν το σήμα δεν είναι συμμετρικό, κάνουμε pad με 0 για να
    % δεσμεύσουμε χώρο 
    if n_min + n_max ~= 0
        n_pad = n_min:n_max;
        x_pad = zeros(size(n_pad));
        % Place the original signal in the padded signal
        x_pad((n_pad >= n_min) & (n_pad <= n_max)) = x;
        n = n_pad;
        x = x_pad;
    end
    
    % Υπολογισμός άρτιου και περιττού μέρους
    x_even = 0.5 * (x + fliplr(x));
    x_odd = 0.5 * (x - fliplr(x));
    
    % Σχειασμός του αρχικού σήματος 
    subplot(3,1,1);
    stem(n, x);
    title('Original Signal x[n]');
    xlabel('n');
    ylabel('Amplitude');
    
    % Σχεδιασμός του άρτιου μέρους
    subplot(3,1,2);
    stem(n, x_even);
    title('Even Component');
    xlabel('n');
    ylabel('Amplitude');
    
    % Σχεδιασμός του περιττού μέρους
    subplot(3,1,3);
    stem(n, x_odd);
    title('Odd Component');
    xlabel('n');
    ylabel('Amplitude');
    
    % Εμφάνιση των μερών στο Matlab
    fprintf('Even Component as a function:\n');
    print_function(x_even, n);
    
    fprintf('Odd Component as a function:\n');
    print_function(x_odd, n);
end

function print_function(signal, n)
    for i = 1:length(n)
        if signal(i) ~= 0
            if n(i) >= 0
                fprintf(' + %.2fn^%d', signal(i), n(i));
            else
                fprintf(' - %.2fn^%d', abs(signal(i)), abs(n(i)));
            end
        end
    end
    fprintf('\n');
end