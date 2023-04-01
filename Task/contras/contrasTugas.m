 clc;
 clear all;

 I = imread('kontras.jpg');

 rmin = min(I(190));                   %find the min, value of pixel
 rmax = max(I(255));                   %find the max, value of pixel


 I_new = (I - rmin).*(255/(rmax - rmin));


 subplot(2,2,1),imshow(I),title('Gambar Asli');
 subplot(2,2,2),imhist(I),title('Histogram Asli');
 subplot(2,2,3),imshow(I_new),title('Gambar Contras');
 subplot(2,2,4),imhist(I_new),title('Histogram Contras');

 