I = imread('spine.tif');
subplot(1,2,1)
imshow(I)
[m,n]=size(I);
I=double(I);
Is=255-I;
subplot(1,2,2)
imshow(uint8(Is))


