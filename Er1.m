n = [1,2,3,4,5,6,7,6,5,4,3,2,1];

figure;
numSubplots = 6;

for i = 1:numSubplots
    subplot(2, 3, i);
    
    switch i
        case 1          
            stem(n);
            title('x[n]');
            
        case 2
            stem([zeros(1,5), n(1:end-5)]);
            title('x[n-5]');
            
        case 3            
            stem([n(5:end), zeros(1,4)]);
            title('x[n+4]');
            
        case 4            
            stem(-n);
            title('x[-n]');
            
        case 5           
            stem(n/2);
            title('x[n/2]');
            
        case 6           
            stem(2*n);
            title('x[2*n]');
    end
end
