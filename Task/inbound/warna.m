clc; clear all;

gambar = imread('rice.jpg');

figure, imhist(gambar);

initiate = double(gambar);

test = skewness(skewness(initiate));

test_std = std(std(initiate));

test_kur = kurtosis(kurtosis(initiate));


%red = mean(mean(gambar(:,:,1)));
%green = mean(mean(gambar(:,:,2)));
%blue = mean(mean(gambar(:,:,3)));;
%fitur = [red green blue]; % mematrikkan fitur
%xlswrite('fiturwarna.xls',fitur)