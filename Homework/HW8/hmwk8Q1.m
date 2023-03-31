% Homework 8, Problem 1
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

% constants
L1 = 5;
L2 = 3;
W = 400;

D = 0.5:0.01:2.5;

T = (L1*L2*W)./(D.*sqrt(L2^2-D.^2));

[min, idx] = min(T);
minD = D(idx);

plot(D, T)