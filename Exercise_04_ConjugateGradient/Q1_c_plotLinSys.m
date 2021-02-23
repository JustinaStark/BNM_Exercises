A = [3 2; 2 6];
b = [2; -8];
c = 0;

x1 = linspace(-4, 6);
x2 = linspace(4, -6);
x = [x1; x2];

F = cost_function(A, x, b, c);

contour(x1, x2, F);

[X, Y] = meshgrid(x1, x2);
surf(X, Y, F);

