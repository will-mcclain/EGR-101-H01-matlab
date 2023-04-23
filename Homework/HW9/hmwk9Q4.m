% Homework 9, Problem 4
% Will McClain
% EGR 101-01
% Due: 4/13/23


clear; clc; close all;

f = @(t) sin(2*pi.*t).*exp(-3*t); %here it is

t = 0:0.01:1;

plot(t, f(t))
grid on
xlabel("t")
ylabel("f(t)")