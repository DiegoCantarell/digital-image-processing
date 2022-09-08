I = imread('cameraman.tif');
%I = imread('coins.png');
%I = imread('circles.png');
[m,n]=size(I);
Dx=zeros(m,n);
Dy=zeros(m,n);
for i=1:m-1
    for j=1:n-1
        Dx(i,j)=I(i+1,j)-I(i,j);
        Dy(i,j)=I(i,j+1)-I(i,j);
    end
end
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(Dx);
subplot(2,2,3);
imshow(Dy);
subplot(2,2,4);
imshow(Dx+Dy);
