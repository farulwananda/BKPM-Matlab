gambar = imread('D:\Developments\Matlab\Minggu 3\tomat.png');
%tomat = rgb2gray(gambar);
tomat = gambar(:,:,1);
%tomat = gambar(:,:,2);
%tomat = gambar(:,:,3);
negasi = 255-tomat;
subplot(1,3,1),imshow(gambar),title('Citra Asli');
subplot(1,3,2),imshow(tomat),title('Citra Grayscale');
subplot(1,3,3),imshow(negasi),title('Citra Negasi');