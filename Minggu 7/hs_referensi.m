clear, clc;

n=[1 5 9];

wref=[255 0 0; 128 0 0; 0 255 0; 0 128 0; 0 0 255;
0 0 128; 255 255 0; 255 0 255; 0 255 255; 
0 0 0; 255 255 255];
nref=10;

for i=1:3
    m = n(i)
    namafile = strcat(int2str(m),'.bmp');
    x=imread(namafile);
    xd=double(x);
    nx=size(x);
    h=zeros(nref,1);
    for k1=1:n(1)
        for k2=1:n(2)
            r=xd(k1,k2,1);
            g=xd(k1,k2,2);
            b=xd(k1,k2,3);
            dmin=50000;
            kmin=0;
            for k3=1:nref
                d2=(r-wref(k3,1))^2+(g-wref(k3,2))^2+(b-wref(k3,3))^2;
                d=sqrt(d2);
                if(d<dmin);
                    dmin=d;
                    kmin=k3;
                end
            end
            h(kmin)=h(kmin)+1;
        end
    end
    h=h/max(h);
    subplot(3,2,2*i-1), imshow(x);
    subplot(3,2,2*i), bar(h), grid, axis([0 nref 0 1]);
end
