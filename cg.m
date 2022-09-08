function cg
I=imread('pout.tif'); I=double(I);x=0:1:255;
gamma=input('Dame gamma= ');s=255*(x./255).^(1/gamma);
[m,n]=size(I);
for i=1:m
    for j=1:n
        Is(i,j)=s(I(i,j)+1);
    end
end
subplot(2,2,1); imshow(uint8(I));subplot(2,2,2);plot(imhist(uint8(I)));
subplot(2,2,3); imshow(uint8(Is));subplot(2,2,4);plot(imhist(uint8(Is)));
