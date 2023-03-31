% Homework 8, Problem 3
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

FEET2METERS = 0.3048;
MPH2MPS= 0.44704;
METERS2FEET = 1/FEET2METERS;
MPS2MPH=1/MPH2MPS;

THETA = 45;
Y0 = 4;
G = 9.8;


t = (0:0.01:16)';

u = (70:10:110);

% x = utsin(theta)cos(theta)
x = (t * (u*MPH2MPS) * cosd(THETA))*METERS2FEET;

% y = y0 + utsin(theta) + (g/2)t^2
y = ((Y0*FEET2METERS) + t * (u*MPH2MPS) * sind(THETA) - (G/2) * t.^2)*METERS2FEET;

yMonster = 37 * ones(length(x));

plot(x, y)
hold on
plot(yMonster, "c--")

xlim([0,310])
ylim([0,220])

legend([string(u) + " mph", "The Monster"])

maxes = max(y);

% 70mph:   85.96  ft max
% 80mph:   111.05 ft max
% 90mph:   139.48 ft max
% 100mph:  171.26 ft max
% 110mph:  206.38 ft max