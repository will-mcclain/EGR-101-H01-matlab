% Homework 7, Problem 2
% Will McClain
% EGR 101-01
% Due: 3/28/23


clear;clc;close all %housekeeping

% data copied from question
% written row-wise and transposed later because lazy
Planet = ["Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Uranus" "Neptune" "Pluto"]';
distance = [0.387 0.723 1.000 1.524 5.203 9.537 19.191 30.069 39.482]';
revolution = ["87.969 d" "224.701 d" "365.256 d" "686.98 d" "11.862 y" "29.457 y" "84.011 y" "164.79 y" "247.68 y"]';
eccentricity = [0.2056 0.0068 0.0167 0.0934 0.0484 0.0542 0.0472 0.0086 0.2488]';
inclination = [7.005 3.3947 0.0000 1.851 1.305 2.484 0.770 1.769 17.142]';

% made into a table bc I wanna practice getting data from tables
planet_table = table(Planet, distance, revolution, eccentricity, inclination);

% housekeeping
planet_table.Properties.VariableUnits{'distance'} = '(A.U.)';
planet_table.Properties.VariableUnits{'inclination'} = 'deg';

theta = linspace(0, 2*pi, 1000); % theta ranged from 0 to 2pi
% R = p/(1-Ecos(theta))
r = planet_table.distance(1:4) ./ (1 - planet_table.eccentricity(1:4) .* cos(theta));

% plot that groovy data
% MATLAB documetation said polar() is outdated and to use polarplot() so
% also the graph in the question only had inner planets so no gas giants :(
polarplot(theta, r);
title("Inner Planet Orbits");
legend(Planet(1:4));