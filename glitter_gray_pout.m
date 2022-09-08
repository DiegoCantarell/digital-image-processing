function glitter_gray_pout
%I = imread('pout.tif');

brillo=mean(mean(I))
for i=-255:1:255
    Ir=I+i;
    brillo=mean(mean(Ir))
    imshow(Ir)

end