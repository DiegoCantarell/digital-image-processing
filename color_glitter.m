function color_glitter
I = imread('onion.png');
[m,n,r]=size(I);
b=sum(sum(I(:,:,1)))/(m*n)+(sum(I(:,:,2)))/(m*n)+(sum(I(:,:,3)))/(m*n);
brillo=b/3
for i=-255:1:255
    Ir=I+i;
    b=sum(sum(Ir(:,:,1)))/(m*n)+(sum(Ir(:,:,2)))/(m*n)+(sum(Ir(:,:,3)))/(m*n);
    brillo=b/3
    imshow(Ir)
end