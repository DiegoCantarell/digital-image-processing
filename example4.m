I = imread("cameraman.tif");
[m,n] = size(I);
h(1:256)=0;
for i=1:m
    for j=1:n
        h(I(i,j)+1) = h(I(i,j)+1)+1;
    end
end
subplot(2,1,1)
imshow(I);
subplot(2,1,2)


        
