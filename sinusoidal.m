clear;
clc;
close all;

t = 0:0.01:10;

plot(t, exp(-0.5*t), "-.")

hold on

plot(t, sin(2*pi*t), "-.")
plot(t, sin(2*pi*t).*exp(-0.5*t))

grid on
xlabel("time (s)")
ylabel("y")
title("y = sin(2*pi*t).*exp(-0.5*t) (0s-10s)")
legend("exp", "sin", "dampened")