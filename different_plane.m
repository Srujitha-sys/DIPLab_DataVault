% Read the RGB image
rgbImage = imread('my_image.jpg');  % Replace with your file

% Separate the R, G, B planes
R = rgbImage(:, :, 1);  % Red plane
G = rgbImage(:, :, 2);  % Green plane
B = rgbImage(:, :, 3);  % Blue plane

% Convert RGB to grayscale manually (no rgb2gray)
R_double = double(R);
G_double = double(G);
B_double = double(B);

grayImage = 0.2989 * R_double + 0.5870 * G_double + 0.1140 * B_double;
grayImage = uint8(grayImage);  % Convert back to uint8 for display

% Display all planes and grayscale image
figure('Name','RGB Planes and Grayscale Conversion');

subplot(2,2,1);
imshow(R);
title('Red Plane');

subplot(2,2,2);
imshow(G);
title('Green Plane');

subplot(2,2,3);
imshow(B);
title('Blue Plane');

subplot(2,2,4);
imshow(grayImage);
title('Grayscale Image (Manual Conversion)');
