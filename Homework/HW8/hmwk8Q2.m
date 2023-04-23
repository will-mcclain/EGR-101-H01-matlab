% Homework 8, Problem 2
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

% column vector of time
t = (0:0.01:14)';

% row vector of speeds
u = [20 40 60];

G = 9.8; % acc due to gravity

% y = ut - (g/2)t^2
% matrix multiplication ain't communitive
y = t*u - (G.*t.^2)./2;

% plotting time
plot(t, y)
title("Baseball Height vs. Time Elapsed; u_1=20m/s, u_2=40m/s, u_3=60m/s")
xlabel("time (s)")
ylabel("height (m)")
% resize graph
ylim([0, 200])
legend(["u_1" "u_2" "u_3"])

% get max values and idxs
[max_height, max_idx] = max(y);
% convert from idx to time
max_time = max_idx / 100;

% u1: height = 20.4082m, time = 2.05s
% u2: height = 81.6326m, time = 4.09s
% u3: height = 183.6734m, time = 6.13s