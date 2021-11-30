close all
%% File to simulate rays propogating in xz plane

d = 0.001;
maxD = 0.2;

% Setup rays for all position 0 ones
ray1 = [[0; pi/20], zeros(2, maxD/d)];
ray2 = [[0; pi/10], zeros(2, maxD/d)];
ray3 = [[0; 0], zeros(2, maxD/d)];
ray4 = [[0; -pi/10], zeros(2, maxD/d)];
ray5 = [[0; -pi/20], zeros(2, maxD/d)];

% Rays for 10mm
ray6 = [[10*10^-3; pi/20], zeros(2, maxD/d)];
ray7 = [[10*10^-3; pi/10], zeros(2, maxD/d)];
ray8 = [[10*10^-3; 0], zeros(2, maxD/d)];
ray9 = [[10*10^-3; -pi/10], zeros(2, maxD/d)];
rayA = [[10*10^-3; -pi/20], zeros(2, maxD/d)];

Md = [1, d; 0, 1];

for i=2:maxD/d+1
    ray1(:, i) = Md*ray1(:, i-1);
    ray2(:, i) = Md*ray2(:, i-1);
    ray3(:, i) = Md*ray3(:, i-1);
    ray4(:, i) = Md*ray4(:, i-1);
    ray5(:, i) = Md*ray5(:, i-1);
    ray6(:, i) = Md*ray6(:, i-1);
    ray7(:, i) = Md*ray7(:, i-1);
    ray8(:, i) = Md*ray8(:, i-1);
    ray9(:, i) = Md*ray9(:, i-1);
    rayA(:, i) = Md*rayA(:, i-1);
end

figure;
plot(0:0.001:0.2, [ray1(1, :)', ray2(1, :)', ray3(1, :)', ray4(1, :)', ray5(1, :)', ray6(1, :)', ray7(1, :)', ray8(1, :)', ray9(1, :)', rayA(1, :)']);
xlabel("z(m)");
ylabel("x(m)");
title("Rays propogating for 0.2m");