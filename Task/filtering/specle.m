clc, clear;
xi = imread("beluga.jpg")
x = imresize(xi, [300 300]);
xg = rgb2gray(x);
xd = double(xg);
n = size(xd);
pn = 0.1;

for i = 1:n(1)
    for j = 1:n(2)
        p = rand;
        if (p <= pn)
            xd(i,j) = 0;
        end
    end
end
y = uint8(xd);

subplot(1,2,1), imshow(xg), title('Gambar Asli')
subplot(1,2,2), imshow(y), title('Gambar dan Specle Noise 10%')