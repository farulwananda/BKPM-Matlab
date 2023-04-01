clear, clc;

k=0;
a=[1 2 5 6 9 10];
hs=zeros(6, 40);

for i=1:6
    namafile=strcat(int2str(a(i)),'.bmp');
    x=imread(namafile);
    y=rgb2hsv(x);
    y1=y(:,:,1);
    y2=reshape(y1,120*180,1);
    h=hist(y2,40);
    h=h/max(h);
    hs(i,:)=h;
    k=k+1;
    subplot(6,2,k),imshow(x);
    k=k+1;
    subplot(6,2,k),plot(h);
end

hu=min(hs);
plot(hu);
hhijau=min(hs(1:2,:));
hmerah=min(hs(3:4,:));
horange=min(hs(5:6,:));
figure(2);
subplot(3,1,1),plot(hhijau);
subplot(3,1,2),plot(hmerah);
subplot(3,1,3),plot(horange);

hv(1,:)=hhijau;
hv(2,:)=hmerah;
hv(3,:)=horange;
save hu hv
