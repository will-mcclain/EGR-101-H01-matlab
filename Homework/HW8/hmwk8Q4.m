% Homework 8, Problem 4
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

% constants
G = 9.8;
X_M = 310;
Y_M = 33;

% conversion constants
FEET2METERS = 0.3048;
MPH2MPS= 0.44704;
METERS2FEET = 1/FEET2METERS;
MPS2MPH=1/MPH2MPS;

% conversion functions
dist_to_metric = @(x) x * FEET2METERS;
speed_to_us_customary = @(x) x * MPS2MPH;

% (G/2)(X_M)^2 = (u^2)cos(theta)(X_M*sin(theta)-Y_M*cos(theta))
% u^2 = ((G/2)(X_M)^2) / (cos(theta)*(X_M*sin(theta)-Y_M*cos(theta)))
% u = sqrt((G/2)(X_M)^2) / (cos(theta)*(X_M*sin(theta)-Y_M*cos(theta)))

theta = 15:0.01:45;

% anonymous function for u-squared value, takes theta as param
u_sq = @(x) (G/2) * dist_to_metric(X_M)^2 ./ (cosd(x).*(dist_to_metric(X_M)*sind(x)-dist_to_metric(Y_M)*cosd(x)));

% self-explanatory
u = speed_to_us_customary(sqrt(u_sq(theta)));

% plot that groovy data
plot(theta, u)
grid on
xlabel("angle (degrees)")
ylabel("speed (mph)")
title("Bat Speed & Angle Needed to Clear the Green Monster")