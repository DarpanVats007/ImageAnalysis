
img = imread('input_sat_image.jpg'); % input colored image
greyscale_image=rgb2gray(img); % convert to greyscale image
figure % open a figure window
%imshow(img) %display image in that opened figure window
imshow(greyscale_image) %display grey scaleimage in that opened figure window
title('input greyscale image') % put a title to the figure

figure
imhist(greyscale_image); % create the histogram plot of the image
title('Histogram of image')

uint8(mean(greyscale_image, 3));
imshow(uint8(mean(greyscale_image, 3)));


% global threshhold function 
figure
imhist(uint8(mean(greyscale_image, 3)));
level = graythresh(greyscale_image);
Output = im2bw(greyscale_image,level);
Output2 = imcomplement(Output);
imshow(Output2);

% imopen and close

SE = strel('square',10); % flat structure element
afterOpening = imopen(BW2,SE); % opening function on BW image
figure, imshow(afterOpening,[]); 
closeBW = imclose(afterOpening,se); % closing function on BW image
figure, imshow(closeBW);
Binary_Mask=imoverlay(img,closeBW,'grey'); % overlay to fill the image with binary mask 
figure, imshow(Binary_Mask);