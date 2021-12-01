close all
%% File to load lightfield image

load("lightField.mat");

[img, x, y] = rays2img(rays(1, :), rays(3, :), 5*10^-3, 200);

figure;
imshow(img);

% It is hard to see a sharp image using 5mm sensor and 200 pixels. However,
% a bright object can be seen in the middle of the image.

% With a 10mm sensor, the image becomes more focused on a bright spot in
% the center, but the image is still a little blurry. However, a sharper
% image can be produced by increasing sensor width.

% Increasing pixels makes the image bigger but does not make it sharper.

%% Propogating the rays
d = 0.02;

Md = [1, d, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, d;
    0, 0, 0, 1];

raysProp = Md*rays;

[imgProp, x, y] = rays2img(raysProp(1, :), raysProp(3, :), 5*10^-3, 200);
figure;
imshow(imgProp);

% Propogating the rays has no impact on clarity. 

%% TODO Answer question 3