% Apply the program to the data  (xj = −5 + 2(j − 1),f(xj)) j = 1,2,..6 for f(x) =
% 1/(1 + x^2). Evaluate the spline function for the x values −4, −2, 0, 2, 4

n = 6;
x = zeros(1, n);
y = zeros(1, n);
for j = 1:n
    x(j) = -5 + 2 * (j - 1);
    y(j) = 1/ (1 + x(j)*x(j)); 
end

xq = (-4: 2: 4);
spline(x, y, xq)



% 
% x = [0.0, 0.5, 1.0, 1.5, 2.0];
% y = [0.0, 1.0, 0.0, -1.0, 0.0];
% xq = 0.25;

% spline(x, y, xq)