I=imread('cameraman.tif');
J=imnoise(I,'gaussian',0.0,0.1);
subplot(1,2,1)
imshow(I);
subplot(1,2,2)
imshow(J);
