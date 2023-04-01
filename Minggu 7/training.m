clear, clc;

a=[1 2 5 6 9 10];
klas=[1 1 2 2 3 3];
hs=zeros(6,40);

for i=1:6
    namafile=strcat(int2str(a(i)),'.bmp');
    x=imread(namafile);
    y=rgb2hsv(x);
    y1=y(:,:,1);
    y2=reshape(y1,120*180,1);
    h=hist(y2,40);
    h=h/max(h);
    hs(i,:)=h;
end

save hs hs klas