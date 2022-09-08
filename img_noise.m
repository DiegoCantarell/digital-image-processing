I=imread('cameraman.tif');
J=imnoise(I,'salt & pepper',0.2);
subplot(1,2,1)
imshow(I);
subplot(1,2,2)
imshow(J);
