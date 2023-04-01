clear, clc;

n=[1 5 9];

for i=1:3
    m=n(i);
    namafile=strcat(int2str(m),'.bmp');
    x=imread(namafile);
    xd=double(x);
    y=floor(xd/64);
    u=y(:,:,3)+4*y(:,:,2)+16*y(:,:,1);
    nx=size(u);
    w=reshape(u,nx(1)*nx(2),1);
    h=hist(w,64);
    h=h/max(h);
    subplot(3,2,2*i-1), imshow(x)
    subplot(3,2,2*i), bar(h), grid, axis([0 64 0 1])
end
