clear, clc;

n=[1 5 9];

for i=1:3
    m=n(i);
    namafile=strcat(int2str(m),'.bmp');
    x=imread(namafile);
    y=rgb2hsv(x);
    yhue=y(:,:,1);
    nx=size(yhue);
    yh=reshape(yhue,nx(1)*nx(2),1);
    h=hist(yh,30);
    h=h/max(h);
    subplot(3,2,2*i-1), imshow(x)
    subplot(3,2,2*i), bar(h), grid, axis([0 30 0 1])
end
