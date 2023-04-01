gambar = imread('beluga.jpg');
gbr_gray = rgb2gray(gambar);
subplot (2,2,2), imshow(gambar),title('Citra Asli');
subplot (2,2,1), imshow(gbr_gray),title('Citra Grayscale');
subplot (2,2,3), imshow(gbr_gray),title('Citra Kolom 2');