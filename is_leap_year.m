clc;
clear;

% inputs default to numeric values
year = input("Enter a year...");

% a year is leap year if it's divisible by 4 EXCEPT if it's divisible by
% 100 EXCEPT EXCEPT if it's divisble by 400

% ~ means "not"
if mod(year, 4) ~= 0
    isPrime = 0;
else
    if mod(year, 100) ~= 0
        isPrime = 1;
    else
        if mod(year, 400) == 0
            isPrime = 1;
        else
            isPrime = 0;
        end
    end
end

disp(isPrime)