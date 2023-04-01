F = imread("beluga.jpg");
F = rgb2gray(F);
[r c] = size(F);
for x = 1 : r
    for y = 1 : r
        G(x,y) = 255-F(x,y);
    end
end

subplot (1,2,1),imshow(F),title('Citra Asli');
subplot (1,2,2),imshow(G),title('Citra Negatif');