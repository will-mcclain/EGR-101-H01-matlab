function [y] = myFibon(n)
    if any(n == 1:2) %if n = 1 or 2
        y = 1;
    else
        %do the recursive jive
        y = myFibon(n-1) + myFibon(n-2);
    end
end

% myFibon(20)/myFibon(19) = 1.6180

% Homework 9, Problem 2
% Will McClain
% EGR 101-01
% Due: 4/13/23