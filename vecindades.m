I=imread('cameraman.tif');
[m,n]=size(I);
I=double(I);
D2x=I;
D2y=I;
for i=2:m-1
    for j=2:n-1
        L4v(i,j)=I(i-1,j)+I(i,j+1)-4*I(i,j)+I(i,j+1)+I(i+1,j);
        L8v(i,j)=I(i-1,j)+I(i,j+1)-8*I(i,j)+I(i,j+1)+I(i+1,j)+I(i-1,j-1)+I(i-1,j+1)+I(i+1,j-1)+I(i+1,j+1);      
    end
end
subplot(1,3,1);
imshow(uint8(I));
subplot(1,3,2);
imshow(uint8(abs(L4v)));
subplot(1,3,3);
imshow(uint8(abs(L8v)));