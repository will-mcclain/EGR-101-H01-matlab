% Homework 7, Problem 3
% Will McClain
% EGR 101-01
% Due: 3/28/23


clear;clc;close all; % housekeeping

% law of cosines
% c^2 = a^2+b^2-2abcos(C)
% D = sqrt(L1^2+L2^2-2*L1*L2.*cos(pi-alpha_rads-beta_rads))

% law of sines
% sin(A) / a = sin(B) / b
% sin(beta_rads)./L2 = sin(alpha_rads)./L1
% beta_rads = asin(sin(alpha_rads).*L2./L1)

% D formula
% D = sqrt(L1^2+L2^2-2*L1*L2.*cos(pi-alpha_rads-asin(sin(alpha_rads).*L2./L1)))

% alpha goes from full extended at alpha=0 to fully retracted at alpha=pi
alpha_rads = linspace(0, pi, 1000);

% constants
L1 = 1;
L2 = 0.5;

% the secret formuler
D = sqrt(L1^2+L2^2-2*L1*L2.*cos(pi-alpha_rads-asin(sin(alpha_rads).*L2./L1)));

% plot it lmao
plot(alpha_rads, D);
title("Piston distance vs. \alpha angle, L_1 = 1ft, L_2 = 0.5ft");
xlabel("\alpha (rad)");
ylabel("D (ft)");