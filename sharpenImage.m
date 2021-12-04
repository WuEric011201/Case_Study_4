close all;

load("lightField.mat");

% 1/d1+1/d2=1/f -> lim d1-> inf, f=d2
% Initialize the variables
d1 = 0.2;
d2 = 0.2;

M1 = [1, d1, 0, 0; 0, 1, 0, 0; 0, 0, 1, d1; 0, 0, 0, 1];
M3 = [1, d2, 0, 0; 0, 1, 0, 0; 0, 0, 1, d2; 0, 0, 0, 1];

f = 0.1;
M2 = [1, 0, 0, 0; -1/f, 1, 0, 0; 0, 0, 1, 0; 0, 0, -1/f, 1];

%M = [-d2/d1, 0, 0, 0; -(1/d1+1/d2), -d1/d2, 0, 0; 0, 0, -d2/d1, 0; 0, 0, -(1/d1+1/d2), -d1/d2];

% Calculate the sharpening process
raysNew = M3*M2*rays; 
% Show the image
[img, x, y] = rays2img(rays(1, :), rays(3, :), 5*10^-3, 200);
[imgNew, xNew, yNew] = rays2img(raysNew(1, :), raysNew(3, :), 5*10^-3, 200);

% Show the original image
figure;
imshow(img);

%  Show the sharpened image
figure;
imshow(imgNew);