gambar = imread('D:\Developments\Matlab\Minggu 3\Embun Tepung.png');
daun = rgb2gray(gambar);
contrast = imadjust(daun);
subplot(1,3,1),imshow(gambar),title('Citra Asli');
subplot(1,3,2),imshow(daun),title('Citra Grayscale');
subplot(1,3,3),imshow(cerah),title('Citra Contrast Ctretching');