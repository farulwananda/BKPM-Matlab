clear, clc;

load hs
ket(1)="Hijau";
ket(2)="Merah";
ket(3)="Orange";
nogambar=input('No Gambar = ' );
namafile=strcat(int2str(nogambar),'.bmp');
x=imread(namafile);
y=rgb2hsv(x);
y1=y(:,:,1);
y2=reshape(y1,120*180,1);
h=hist(y2,40);
h=h/max(h);
for i=1:6
    d(i)=sum(abs(h-hs(i,:)));
end
[a,b]=min(d);
disp(ket(klas(b)));