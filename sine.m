clear;
clc;
close all;

t = 0:0.01:10;

% zeroes makes a zero vector 1 x 1001
y = zeros(1, length(t)); % technically don't need this but it's better to not extend vectors in real-time

for idx = 1:length(t) % vectors are indexed starting at 1
    y(idx) = sin(2*pi*t(idx));
end

% ^^ guess what don't need this either

y = sin(2*pi*t);

plot(t, y)
grid on
xlabel("time (s)")
ylabel("y")
title("y = sin(2*pi*t) [0s-10s]")