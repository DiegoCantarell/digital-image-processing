function gamma_correction2
I=imread('saturn.png'); I=double(I);x=0:1:255;gamma=input('Dame gamma= ');
s=255*(x./255).^(1/gamma);
[m,n,r]=size(I);
for k=1:r
for i=1:m
    for j=1:n
        Is(i,j,k)=s(I(i,j,k)+1);
    end
end
end
subplot(2,2,1); imshow(uint8(I));subplot(2,2,2);plot(imhist(uint8(I)));
subplot(2,2,3); imshow(uint8(Is));subplot(2,2,4);plot(imhist(uint8(Is)));
