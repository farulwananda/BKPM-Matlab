gambar = imread('D:\Developments\Matlab\Minggu 3\bakteri1.png');
bakteri = rgb2gray(gambar);
HQ=histeq(gambar);
subplot(1,3,1),imshow(gambar),title('Citra Asli');
subplot(1,3,2),imshow(bakteri),title('Citra Grayscale');
subplot(1,3,3),imshow(HQ),title('Hist. Equalization');
