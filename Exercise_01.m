epsilon = 1.0;
while (1.0 + 0.5 * epsilon > 1.0) 
    epsilon = 0.5 * epsilon;
    
end
disp(['epsilon = ' num2str(epsilon)])

eps
    

C = [1 1 2; -1 2 1; 0 -1 1];

cond(C)

sum = 0;
k = 10000;
while (k >= 1)
    sum = sum + 4 * (-1)^(k+1) / (2*k -1);
    k = k-1;
end
disp(['sum = ' num2str(sum)])