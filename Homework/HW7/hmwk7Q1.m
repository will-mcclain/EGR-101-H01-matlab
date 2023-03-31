% Homework 7, Problem 1
% Will McClain
% EGR 101-01
% Due: 3/28/23


clear;clc;close all; % housekeeping

R = 1:0.01:25; % R bounded from 1 foot to 25 feet
A = 1600; % a constant 1600ft^2

% A = 2R*L + (1/2)pi*R^2
L = A./(2*R) - (pi/4)*R;

plot(R,L);
title("Fence Area: 1600ft^2");
xlabel("Radius (ft)");
ylabel("Length (ft)");

% $30 per foot * length of straight fence + $40 per foot * length of curved
% fence
C = 30*(L + L + 2*R) + 40*(pi*R);

[minC, idx] = min(C); % get min of C

mins = [C(idx) R(idx) L(idx)]; % list of mins of C, R & L

% minimum cost: $5,157.48
% R: 18.61 ft
% L: 28.37 ft