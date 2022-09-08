function mediana 
I= imread('pout.tif');
J=imnoise(I,'salt & pepper',0.01);
[m,n]=size(I);
J=double(J);
for i=2:m-1
    for j=2:n-1
        datos=[J(i-1,j) J(i,j-1) J(i,j) J(i,j+1) J(i+1,j)];
        datosordenados=sort(datos);
        Is(i,j)=datosordenados(3);
    end
end
subplot(1,2,1)
imshow(uint8(J))
subplot(1,2,2)
imshow(uint8(Is))