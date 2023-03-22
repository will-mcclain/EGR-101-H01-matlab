%% Homework 5, Problem 5
%% Will McClain
%% EGR 101-01
%% Due: 2/23/23


clear;clc;close all;

R = 1:0.01:25;
A = 1600;
L = A./(2*R) - (pi/4)*R;

plot(R,L);
title("Fence Area: 1600ft^2")
xlabel("Radius (ft)");
ylabel("Length (ft)");

C = 30*(L + L + 2*R) + 40*(pi*R);

[minC, idx] = min(C);

mins = [C(idx) R(idx) L(idx)];

% minimum cost: $5,157.48
% R: 18.61 ft
% L: 28.37 ft