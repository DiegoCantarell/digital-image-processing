I=imread('cameraman.tif');
[m,n]=size(I);
I=double(I);
D2x = I;
D2y = I;
for i=2:m-1
    for j=2:n-1
        D2x(i,j)=I(i+1,j)-2*I(i,j)-I(i-1,j);
        D2y(i,j)=I(i,j+1)-2*I(i,j)-I(i,j-1);
    end
end
subplot(2,2,1);
imshow(uint8(I));
subplot(2,2,2);
imshow(uint8(D2x));
subplot(2,2,3);
imshow(uint8(Dy));
subplot(2,2,4);
imshow(uint8(Dx+Dy));
