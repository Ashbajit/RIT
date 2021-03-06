% Digital Image Processing Introduction

clc; clear; close all;

% image rainbow.jpg should be added to the path of matlab file on which you are working
% write subplot first and then the command to perform
subplot(2, 3, 1);
original = imread('rainbow.jpg');

% see image subimage / imshow anything is fine
%imshow(original); % im + english word = command
subimage(original);
title('Original');
axis off; % hides the x and y axis

%convert 3D image to 2D image(grayscale)
subplot(2, 3, 2);
gray = rgb2gray(original); % gray is user - defined function; rgb2gray built-in function
imshow(gray);
title('Gray');

%convert 3D image to Black and white image
subplot(2, 3, 3);
bw = im2bw(original);
imshow(bw);
title('Black and White');

% To see RGB composition of picture
%show redband : in the plot white portion represents the redband
subplot(2, 3, 4);
redband = original(:, :, 1);
imshow(redband);
title('R');

%show greenband : in the plot white portion represents the greenband
subplot(2, 3, 5);
greenband = original(:, :, 2);
imshow(greenband);
title('G');

%show blueband : in the plot white portion represents the blueband
subplot(2, 3, 6);
blueband = original(:, :, 3);
imshow(blueband);
title('B');