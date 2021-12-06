close all; 
clc
%% File to load lightfield image

load("lightField.mat");

[img, x, y] = rays2img(rays(1, :), rays(3, :), 5*10^-3, 200);

figure;
imshow(img);

% It is hard to see a sharp image using 5mm sensor and 200 pixels. However,
% a bright object can be seen in the middle of the image.

% With a 10mm sensor, the image becomes more focused on a bright spot in
% the center, but the image is still a blurry.

% Increasing pixels makes the image bigger but does not make it sharper.

%% Propogating the rays
% Initialize the values
d = 0.02;

Md = [1, d, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, d;
    0, 0, 0, 1];
% Compute the final position
raysProp = Md*rays;
            
[imgProp, x, y] = rays2img(raysProp(1, :), raysProp(3, :), 5*10^-3, 200);
figure;
title("The image after propogating for a distance of 0.02 m");
imshow(imgProp);


% Propogating the rays with a larger distance will make the image look
% less sharp but decreasing the distnace will not not make the image look
% less sharp. 

%% question 3
% The image that is captured from a specific distance from the object, 
% emitted light will not be the same as the object itself. Our propogation 
% matrix, Md, only simulates increasing the distance from the object.
% The light rays will never reconverge and instead, it will be more blurred
% since different light rays from different spots on the object will 
% interfere and overlap with each other as the object is emitting light 
% with diffferent angles from the input plane. 