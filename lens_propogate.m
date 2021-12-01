close all
%% File to simulate rays propogating in xz plane

d = 0.02;

% Setup rays for all position 0 ones
ray1 = [0; pi/20];
ray2 = [0; pi/10];
ray3 = [0; 0];
ray4 = [0; -pi/10];
ray5 = [0; -pi/20];

% Rays for 10mm
ray6 = [10*10^-3; pi/20];
ray7 = [10*10^-3; pi/10];
ray8 = [10*10^-3; 0];
ray9 = [10*10^-3; -pi/10];
rayA = [10*10^-3; -pi/20];
f = 0.02;
Md1 = [1, d; 0, 1];
Mf = [1, 0; -1/f, 1];
Md2 = [1, d; 0, 1];

allRays = [ray1, ray2, ray3, ray4, ray5, ray6, ray7, ray8, ray9, rayA];

% rayP =Md2* Mf* Md1*allRays; <---- NOT working as this should 

rayP =Md1*allRays;
rayP1=  Md2* Mf* rayP;

figure;
hold on;
plot(0:0.2:0.2, [allRays(1, :)', rayP(1, :)']);
plot(0.2:0.2:0.4, [rayP(1, :)', rayP1(1, :)']);
xlabel("z(m)");
ylabel("x(m)");
title("Rays propogating for 0.4m");