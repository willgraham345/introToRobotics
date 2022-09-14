%% HW 2
clear; clc; close all;
%% PRoble

T__a_b = makehgtform('translate', [1, -1, 0]', 'zrotate', pi)
R = rotz(180)
T__b_c = makehgtform('translate', [-1, -2, 0]', 'zrotate', -pi/2)

T__a_c = T__a_b*T__b_c

%% Problem 1 (should be checked in matlab again...)

d__1_2 = [-1, -2, 0]';
R__1_2 = rotz(rad2deg(-pi/2))

p__2_2 = [1, 1, 0]';


p__1_2 = d__1_2 + R__1_2*p__2_2

d__0_2 = T__a_c(1:3,4)
R__0_2 = T__a_c(1:3, 1:3)
p__0_2 = d__0_2 + R__0_2*p__2_2;

%%

