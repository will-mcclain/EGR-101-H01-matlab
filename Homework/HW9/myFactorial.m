function [y] = myFactorial(N)
    % idk this is all self-explanatory
    if N == 0
        y = 1;
    else
        y = myFactorial(N-1) * N;
    end
end

% Homework 9, Problem 5
% Will McClain
% EGR 101-01
% Due: 4/13/23