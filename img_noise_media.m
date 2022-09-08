function img_noise_media
I=imread('pout.tif');
J=imnoise(I,'salt & pepper',0.2);
[m,n]=size(I);
I=double(I);
for i=2:m-1
    for j=2:n-1
        Is(i,j)=mean([J(i-1,j) J(i,j-1) J(i,j) J(i,j+1) J(i+1,j)]);
    end
end
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imshow(uint8(Is))
        