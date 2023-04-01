clear;
clc;
im = imread('rongen.png');
imr = imresize(im,[350,350]);
z=double(imr);
[row,col]=size(z);
for i=1:1:row
    for j=1:1:col
        if((z(i,j)>145)) && (z(i,j)<250)
            z(i,j)=255;
        else
            z(i,j)=0;
        end
    end
end
figure,imshow(im);
figure,imshow(z);
         