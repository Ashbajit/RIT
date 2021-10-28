clc; clear; close all;

% Original image
original = imread('scattered_rice.jpg');
subplot(3, 3, 1); % 3,3 signifies total 3 * 3 = 9 image placeholders; 1 signifies the position of current sub-plot
imshow(original);
title('Original');

% Black and White 
black_and_white = im2bw(original,0.55); %Here, we are setting a threshold for converting image to black and white
% threshold varies from 0 to 1; %here, 0.55 is the threshold,on the entire
% scale of (0-255). Towards 255 lies white, towars 0 lies black
% 0.55*255 = 140.25(approx. 141) , any pixel value greater than 141  will be white
% and less than 141 will be black
subplot(3, 3, 2);
imshow(black_and_white);
title('Logical');

% 80% Threshold
bw_80 = im2bw(original, 0.8); %vary the threshold value to observe bw image 
subplot(3, 3, 3);
imshow(bw_80);
title('80% threshold');

% Grayscale
grayscale = rgb2gray(original);
subplot(3, 3, 4);
imshow(grayscale);
title('Gray');

% Histogram ( shows frequency of pixels on scale of 0-255)
subplot(3, 3, 7);
imhist(grayscale); 
title('Histogram');

% Histogram Sliding ( Frequency shift of pixels )
grayscale_slide = grayscale - 100;
subplot(3, 3, 5);
imshow(grayscale_slide);
title('Histogram Sliding');

subplot(3, 3, 8);
imhist(grayscale_slide);
title('Histogram Sliding');

% Histogram Equalization ( Distributes the frequency of pixels over entire
% range for better picture )
[eq, T] = histeq(grayscale);
subplot(3, 3, 6);
imshow(eq);
title('Histogram Equalizer');

subplot(3, 3, 9);
imhist(eq);
title('Histogram Equalizer');
