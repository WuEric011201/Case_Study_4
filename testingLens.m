%% File to simulate rays hitting lense

d1 = 0.2;
M1 = [1, d1, 0, 0; 0, 1, 0, 0; 0, 0, 1, d1; 0, 0, 0, 1];

f = 0.03;
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

allRays = [ray1, ray2, ray3, ray4, ray5, ray6, ray7, ray8, ray9, rayA, rayB, rayC, rayD, rayE, rayF];

raysOpen = M1*allRays;

raysLense = M2*raysOpen;

raysConverge = M3*raysLense;

plot([0, d1, d1+d3], [allRays(1, :)', raysOpen(1, :)', raysConverge(1, :)']);