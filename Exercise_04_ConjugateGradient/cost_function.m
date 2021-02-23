function [F] = cost_function(A, x, b, c)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
F = 0.5 * x.'*A*x - x.'*b + c;
end

