% Homework 8, Problem 1
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

% constants
L1 = 5;
L2 = 3;
W = 400;

% range displacement from 0.5m to 2.5m
% D<3 or else there is an imaginary or inf result for T
D = 0.5:0.01:2.5;

% T = L1*L2*W/(D*sqrt(L2^2-D^2))
T = (L1*L2*W)./(D.*sqrt(L2^2-D.^2));

% get min tension and idx
[min, idx] = min(T);
% get displacement from idx
minD = D(idx);

%plot!
plot(D, T)
xlabel("Cable Displacement (m)")
ylabel("Tension (N)")
title("Cable Tension vs. Displacement; L_1=5m, L_2=3m, W=400N")
grid on

% minimum tension: 1,333.33N at D = 2.12m