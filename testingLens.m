close all;

%% File to simulate a camera lens and sharpen our lightfield image
load("lightField.mat");

% 1/d1+1/d2=1/f -> lim d1-> inf, f=d2
d=1;

d1 = 0.2+d;

%d2 can be from .13 -> .25 ish
d2 = 0.2;

M1 = [1, d, 0, 0; 0, 1, 0, 0; 0, 0, 1, d; 0, 0, 0, 1];
M3 = [1, d2, 0, 0; 0, 1, 0, 0; 0, 0, 1, d2; 0, 0, 0, 1];

f = 1/(1/d1+1/d2);
M2 = [1, 0, 0, 0; -1/f, 1, 0, 0; 0, 0, 1, 0; 0, 0, -1/f, 1];

%M = [-d2/d1, 0, 0, 0; -(1/d1+1/d2), -d1/d2, 0, 0; 0, 0, -d2/d1, 0; 0, 0, -(1/d1+1/d2), -d1/d2];

raysNew = M3*M2*M1*rays;

[img, x, y] = rays2img(rays(1, :), rays(3, :), 5*10^-3, 200);
[imgNew, xNew, yNew] = rays2img(raysNew(1, :), raysNew(3, :), 5*10^-3, 200);

figure;
imshow(img);

figure;
imshow(imgNew);