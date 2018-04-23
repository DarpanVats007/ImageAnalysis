close all 
clear all
clc
pkg load image

i_img=imread('input_sat_image.jpg'); % input colored image
# greyscale_image=rgb2gray(input_image); % convert to greyscale image
figure % open a figure window
imshow(i_img) %display image in that opened figure window
title('input greyscale image') % put a title to the figure

figure
imhist(i_img); % create the histogram plot of the image
title('Histogram of image')


 
      
      
      