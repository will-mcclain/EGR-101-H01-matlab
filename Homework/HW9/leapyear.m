function [output] = leapyear(year)
    year_length = length(year); %length of the input vector
    output = zeros(1, year_length); %it's good practice initialize vecotrs like this
    for idx = 1:year_length
        %it's a leap year if it's divisible by 4 UNLESS it's divisible by
        %100 UNLESS UNLESS it's divisible by 400

        %and I think I did the happy path inversion right
        if mod(year(idx), 4) ~= 0
            output(idx) = 0;
        elseif mod(year(idx), 100) ~= 0
            output(idx) = 1;
        elseif mod(year(idx), 400) ~= 0
            output(idx) = 0;
        else
            output(idx) = 1;
        end
    end
    %outputs a vector of trues and falses corresponding to the input vector
end

% sum(leapyear(1492:3097)) = 390

% Homework 9, Problem 1
% Will McClain
% EGR 101-01
% Due: 4/13/23