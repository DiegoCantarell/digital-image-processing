I = imread('pout.tif');
[m,n] = size(I);
I=double(I);
subplot(3,3,1)
imshow(uint8(I))
xlabel('Original')
subplot(3,3,2)
Ia=double(I);
for i=1:m
for j=1:n
Ia(i,j) =I(i,j)^2/(255);
end
end
imshow(uint8(Ia))
%imshow(Ia)
xlabel('Cuadrada')
subplot(3,3,3)
Ib=zeros(m,n);
for i=1:m
for j=1:n
%Ia(i,j) = (i,j)^2/(255);
Ib(i,j) =I(i,j)^3/(255^2);
end
end
imshow(uint8(Ib))
xlabel('Cubica')
subplot(3,3,4)
imshow(uint8(I))
xlabel('Original')
subplot(3,3,5)
Id=double(I);
for i=1:m
for j=1:n
Id(i,j) = I(i,j)^(1/2)*(255)^(1/2);
end
end
imshow(uint8(Id))
xlabel('Raiz Cuadrada')
subplot(3,3,6)
Id=double(I);
for i=1:m
for j=1:n
Id(i,j) = I(i,j)^(1/3)*(255)^(2/3);
end
end
imshow(uint8(Id))
xlabel('Raiz Cubica')
subplot(3,3,7)
imshow(uint8(I))
xlabel('Original')
subplot(3,3,8)
Ie=double(I);
for i=1:m
for j=1:n
Ie(i,j) = 255*log(1+I(i,j))/(log(1+255));
end
end
imshow(uint8(Ie))
xlabel('Logaritmo')
subplot(3,3,9)
If=double(I);
for i=1:m
for j=1:n
If(i,j) = 255*(-1+exp(I(i,j)/255))/(-1+exp(1));
end
end
imshow(uint8(If))
xlabel('Exponencial')
