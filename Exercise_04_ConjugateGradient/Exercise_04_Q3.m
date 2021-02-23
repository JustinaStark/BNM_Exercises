A = [3 1 0 0; 1 4 1 3; 0 1 10 0; 0 3 0 3];
b = [1; 1; 1; 1];

tol = 1e-7;
maxit = 1000;

x = pcg(A, b, tol, maxit)

L = chol(A,'lower')

eig_val = eig(A)
