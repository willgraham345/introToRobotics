%% problem 1
clear; close all; clc; format compact;
A = rotx(90)
B = roty(180)
C = A*B

%% Problem 2
T_01 = [rotz(-90), [0, -1.5, 1]';
    0, 0, 0, 1];

T_12 = [rotz(0), [1, 1, 0]';
    0, 0, 0, 1];

A = rotz(90)*rotx(-180)

T_23 = [A, [0, 0, 3]';
    0, 0, 0, 1];

T_03 = T_01*T_12*T_23

%% 
k = [2, -2, 1]' .* 1/3;

A = k*k'

Skew_k = [0 -k(3) k(2); k(3) 0 -k(1); -k(2) k(1) 0]

C = A + Skew_k

%%
