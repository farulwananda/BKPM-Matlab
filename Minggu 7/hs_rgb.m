clear, clc;

n=[1 5 9];

for i=1:3
    m=n(i);
    namafile=strcat(int2str(m),'.bmp');
    x=imread(namafile);
    r=x(:,:,1);
    g=x(:,:,2);
    b=x(:,:,3);
    hr=imhist(r);
    hg=imhist(g);
    hb=imhist(b);
    h=[hr' hg' hb'];
    h=h/max(h);
    subplot(3,2,2*i-1), imshow(x)
    subplot(3,2,2*i), bar(h), grid, axis([0 768 0 1])
end
