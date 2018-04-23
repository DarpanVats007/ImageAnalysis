
close all
clear all
clc
pkg load image

i_img=imread('input_sat_image.jpg'); % input image
imshow(i_img);
uint8(mean(i_img, 3));
imshow(uint8(mean(i_img, 3)));
figure
imhist(uint8(mean(i_img, 3)));
level = graythresh(i_img);
Output = im2bw(i_img,level);
Output2 = imcomplement(Output);
imshow(Output2);
