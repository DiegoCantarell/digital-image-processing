img = input("Dame el nombre de la imagen:  ")
%LECTURA DE IMAGEN
I= imread(img);
[m,n]=size(I);
subplot(2,1,1)
imshow(I)
I= double(I);
[U,S,V]=svd(I);
%ENTRE MENOR EL VALOR DE R, M'AS DISTORCIONADA LA IMAGEN
r=input('Ingresa el valor de r: ')
%CICLO PARA MODIFICAR IMAGEN
for k=1:r
    %
    r = U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
end
%SE MUESTRA IMAGEN COMPRIMIDA
I = uint8(r);
subplot(2,1,2)
imshow(I)

