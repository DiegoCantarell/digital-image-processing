function brillo_gris
I=imread('pout.tif');
brillo=mean(mean(I))
for i=-255:1:255
    Ir=I+i;
    brillo=mean(mean(I))
    imshow(Ir)
    tic();pause(.1);toc();
end