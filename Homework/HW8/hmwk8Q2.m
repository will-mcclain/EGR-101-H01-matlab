% Homework 8, Problem 2
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

t = (0:0.01:14)';

u = [20 40 60];

g = 9.8;

% matrix multiplication ain't communitive
y = t*u - (g.*t.^2)./2;

plot(t, y)
ylim([0, 200])