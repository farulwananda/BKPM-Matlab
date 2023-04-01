clc;
clear all;

image = imread('cameraman.tif');
average = fspecial('average',[10,10]);
filter = imfilter(image,average);

subplot(1,2,1),imshow(uint8(image)),title('Gambar Asli');
subplot(1,2,2),imshow(uint8(filter)),title('Gambar Blur');