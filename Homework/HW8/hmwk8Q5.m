% Homework 8, Problem 5
% Will McClain
% EGR 101-01
% Due: 4/6/23


clear;clc;close all; % housekeeping

t = 0:0.01:10;

% y(t) = t^2, z(t) = 10 - t
y = t.^2;
z = 10 - t;

y_conditional = (t(y>20)); % timestamps at which y > 20
z_conditional = (t(z<4)); % timestamps at which z < 4

first_y = y_conditional(1); % the first time y > 20
first_z = z_conditional(1); % the first time z < 4

instance_num = sum(y>20); % how many times y > 20 with 0.01sec test intervals

valid_time = t(y>60 & z>2.2); % time values where y>60 AND z>2.2

plot(t, [y;z])
grid on
xlabel("time")
ylabel("Y Z")
legend("Y", "Z")

% y>20 first at t=4.48s
% y>20 in 553 instances
% z<4 first at t=6.01s
% y>60 & z>2.2 when 7.75<=t<=7.79