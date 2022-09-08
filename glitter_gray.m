function glitter_gray
%I = imread('pout.tif');
I = [1,0,1;1,2,2;1,0,1;]
brillo=mean(mean(I))
for i=-255:1:255
    Ir=I+i;
    brillo=mean(mean(Ir))
    imshow(Ir)

end