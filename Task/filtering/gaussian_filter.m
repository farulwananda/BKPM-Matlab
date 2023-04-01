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
            r = 12*randn;
            xd(i,j) = xd(i,j) + r;
        end
    end
end
y = uint8(xd);
h = [1 1 1;1 4 1;1 1 1] /12;
zd=conv2(h,xd);
z=uint8(zd);

subplot(1,3,1), imshow(xg), title('Gambar Asli')
subplot(1,3,2), imshow(y), title('Gambar Gaussian Noise 10%')
subplot(1,3,3), imshow(z), title('Gambar Filter')