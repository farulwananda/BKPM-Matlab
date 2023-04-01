clc;
clear;

I = imread('jentik.jpg');
Ir = imresize(I, [250 250]);
NI = 140-Ir;
[row, col] = size(NI);
for i = 1:1:row
    for j = 1:1:col
        if ((NI(i,j)>50)) && (NI(i,j)<255)
            NI(i,j)=0;
        else
            NI(i,j)=255;
        end
    end
end

xg = 0.90*NI(:,:,1)+0.25*NI(:,:,2)+0.45*NI(:,:,3);

subplot(2,2,1),imshow(Ir),title('Gambar Asli');
subplot(2,2,2),imshow(NI),title('Gambar Negative');
subplot(2,2,3),imshow(xg),title('Gambar Hasil');

