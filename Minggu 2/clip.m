F = imread('beluga.jpg');
F = rgb2gray(F);
G = clipping(F);
subplot (1,2,1), imshow(F),title('Citra Asli');
subplot (1,2,2), imshow(G),title('Citra Clipping');