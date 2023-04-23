function [y] = birthMatch(N)
    me = randi(365); %my birthday
    them = randi(365, [1, N]); %a vector of everyone else's birthday
    y = any(me == them); %if I match at least one person
end

% birthMatch(500) passed, idk what else to say

% Homework 9, Problem 3
% Will McClain
% EGR 101-01
% Due: 4/13/23