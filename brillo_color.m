function brillo_color
I=imread('onion.png');
[m,n,r]=size(I)
%DEBIDO A QUE TIENE 3 CANALES, SE NECESITA SACAR LA MEDIA DE CADA CANAL
b=sum(sum(I(:,:,1)))/(m*n)+sum(sum(I(:,:,2)))/(m*n)+sum(sum(I(:,:,3)))/(m*n);
brillo=b/3
for i=-255:1:255
    Ir=I+1;
    b=sum(sum(Ir(:,:,1)))/(m*n)+sum(sum(Ir(:,:,2)))/(m*n)+sum(sum(Ir(:,:,3)))/(m*n);
    brillo=b/3
    imshow(Ir)
end