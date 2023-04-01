gambar = imread('D:\Developments\Matlab\Minggu 3\Embun Tepung.png');
daun = rgb2gray(gambar);
cerah = daun + 50;
gelap = daun - 50;
subplot(2,2,1),imshow(gambar),title('Citra Asli');
subplot(2,2,2),imshow(daun),title('Citra Grayscale');
subplot(2,2,3),imshow(cerah),title('Citra Brightness');
subplot(2,2,4),imshow(gelap),title('Citra Darkness');
