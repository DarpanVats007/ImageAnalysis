close all 
clear all
clc
pkg load image

i_img = imread('input_sat_image.jpg'); % input image
figure;
subplot(1,2,1); imshow(i_img);
subplot(1,2,,2); imhist(i_img);
imh = imadjust(i_img,[0.3,0.6],[0.0,1.0]);
imh1 = histeq(i_img);
figure;
subplot(2,2,1); imshow(imh); title ('Contrast stretching');
subplot(2,2,2); imhist(imh);
subplot(2,2,3); imshow(imh1); title ('Histogram equlization');
subplot(2,2,4); imhist(imh1);


     