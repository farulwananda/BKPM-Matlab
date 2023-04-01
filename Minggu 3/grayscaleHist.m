% untuk membaca citra
gambar = imread('D:\Developments\Matlab\Minggu 3\malam.jpeg'); %lokasi citra
sirih = rgb2gray(gambar); %konversi warna dari RGB ke grayscale
% menampilkan hasil konversi warna grayscale
subplot(1,2,1),imshow(sirih),title('Citra Grayscale');
%imhist digunakan untuk menampilkan histogram
subplot(1,2,2),imhist(sirih),title('Histogram Citra');