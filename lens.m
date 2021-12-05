%% File to simulate rays hitting lense
% set up all the parameters
d1 = 0.2;
M1 = [1, d1, 0, 0; 0, 1, 0, 0; 0, 0, 1, d1; 0, 0, 0, 1];

f = 0.1;
M2 = [1, 0, 0, 0; -1/f, 1, 0, 0; 0, 0, 1, 0; 0, 0, -1/f, 1];

d3 = 0.3;
M3 = [1, d3, 0, 0; 0, 1, 0, 0; 0, 0, 1, d3; 0, 0, 0, 1];

M = M3*M2*M1;

% Setup rays for all position 0 ones
ray1 = [0; pi/20; 0; 0];
ray2 = [0; pi/40; 0; 0];
ray3 = [0; 0; 0; 0];
ray4 = [0; -pi/40; 0; 0];
ray5 = [0; -pi/20; 0; 0];

% Rays for 10mm
ray6 = [10*10^-3; pi/20; 0; 0];
ray7 = [10*10^-3; pi/40; 0; 0];
ray8 = [10*10^-3; 0; 0; 0];
ray9 = [10*10^-3; -pi/40; 0; 0];
rayA = [10*10^-3; -pi/20; 0; 0];

% Rays for 20mm
rayB = [20*10^-3; pi/20; 0; 0];
rayC = [20*10^-3; pi/40; 0; 0];
rayD = [20*10^-3; 0; 0; 0];
rayE = [20*10^-3; -pi/40; 0; 0];
rayF = [20*10^-3; -pi/20; 0; 0];
% Fill in the container for the initial position
allRays = [ray1, ray2, ray3, ray4, ray5, ray6, ray7, ray8, ray9, rayA, rayB, rayC, rayD, rayE, rayF];
% Compute the rays
raysOpen = M1*allRays;
raysLense = M2*raysOpen;
raysConverge = M3*raysLense;

figure;
plot([0, d1, d1+d3], [allRays(1, :)', raysOpen(1, :)', raysConverge(1, :)']);
xlabel("z(m)");
ylabel("x(m)");
title("Rays propogating and hitting a lens");

%% Part 2 Question 1b
% The group of rays, at x = 20mm, still converges to same z spot after
% travelling through the lense. This is expected, as based on the equation
% 1/d1 + 1/d2 = 1/f still holds true. d1 is the same as the other rays,
% and f is still the same, so the resulting d2 where the rays converge will
% still be the same.

% When f becomes larger, the seperation between image points increases. 

%% Question 2

% M = [-d2/d1, 0, 0, 0; -1/f, -d1/d2, 0, 0; 0, 0, -d2/d1, 0; 0, 0, -1/f, -d1/d2];

%% TODO Answer question 2: 2b 2c

% 2b: The higher the input ray is (larger X value), the lower the output
% ray is (x value).

