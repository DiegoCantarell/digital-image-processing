function contrast1
I = imread('pout.tif');
[m,n]=size(I);
h=imhist(I);
P=h/(m*n);
d=0:1:255
media=mean(mean(I));
d2=(d-media).^2;
varianza=d2*P
