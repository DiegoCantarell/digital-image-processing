%function umbral
%operacion UMBRAL
I = imread('spine.tif');
[m,n] = size(I);
Is = zeros(m,n);
% declaramos en for dependiendo como queremos la i
for i=1:m
    for j=1:n
        if I(i,j)>=28
            Is(i,j)=255;
        end
    end
end
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imshow(Is)

