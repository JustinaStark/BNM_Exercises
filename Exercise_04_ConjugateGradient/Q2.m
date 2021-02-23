A = [3 2 1; 2 3 2; 1 2 3]
ATA = transpose(A) * A

eig_val = eig(ATA)