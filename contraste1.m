function contraste1
I=imread('pout.tif');
[m,n]=size(I);
%EL HISTOGRAMA
h=imhist(I);
P=h/(m*n);
d=0:1:255
%LA MEDIA DE UN ARREGLO
media=mean(mean(I));
d2=(d-media).^2;
varianza=d2*P

