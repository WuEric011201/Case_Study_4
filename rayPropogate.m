close all
%% File to simulate rays propogating in xz plane

d = 0.02;

% % Setup rays for all position 0 ones
% ray1 = [[0; pi/20], zeros(2, 1)];
% ray2 = [[0; pi/10], zeros(2, 1)];
% ray3 = [[0; 0], zeros(2, 1)];
% ray4 = [[0; -pi/10], zeros(2, 1)];
% ray5 = [[0; -pi/20], zeros(2, 1)];
% 
% % Rays for 10mm
% ray6 = [[10*10^-3; pi/20], zeros(2, 1)];
% ray7 = [[10*10^-3; pi/10], zeros(2, 1)];
% ray8 = [[10*10^-3; 0], zeros(2, 1)];
% ray9 = [[10*10^-3; -pi/10], zeros(2, 1)];
% rayA = [[10*10^-3; -pi/20], zeros(2, 1)];

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

Md = [1, d; 0, 1];

allRays = [ray1, ray2, ray3, ray4, ray5, ray6, ray7, ray8, ray9, rayA];

rayP = Md*allRays;
%     ray1(:, 2) = Md*ray1(:, 1);
%     ray2(:, 2) = Md*ray2(:, 1);
%     ray3(:, 2) = Md*ray3(:, 1);
%     ray4(:, 2) = Md*ray4(:, 1);
%     ray5(:, 2) = Md*ray5(:, 1);
%     ray6(:, 2) = Md*ray6(:, 1);
%     ray7(:, 2) = Md*ray7(:, 1);
%     ray8(:, 2) = Md*ray8(:, 1);
%     ray9(:, 2) = Md*ray9(:, 1);
%     rayA(:, 2) = Md*rayA(:, 1);

figure;
%plot(0:0.2:0.2, [ray1(1, :)', ray2(1, :)', ray3(1, :)', ray4(1, :)', ray5(1, :)', ray6(1, :)', ray7(1, :)', ray8(1, :)', ray9(1, :)', rayA(1, :)']);
plot(0:0.2:0.2, [allRays(1, :)', rayP(1, :)']);
xlabel("z(m)");
ylabel("x(m)");
title("Rays propogating for 0.2m");