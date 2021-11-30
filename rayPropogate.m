%% File to simulate rays propogating in xz plane

initialX = 0;
initialTheta = pi/20;
rayXi = [initialX; initialTheta];

rayX = (rayXi);

d = 0.001;

Md = [1, d; 0, 1];

for i=0.001:0.001:0.2
    rayXd = Md*rayX(:, end);
    rayX = [rayX, rayXd];
end

figure;
plot(0:0.001:0.2, rayX(1, :));