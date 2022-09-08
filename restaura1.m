function restaura1
    I=imread('cameraman.tif');
    J=imnoise(I,'salt & pepper',0.1);
    [m,n]=size(I);
    J=double(J);
    vec=3;
    Rmax=J;
    Rmin=J;
    Rprom=J;
    Rmed=J;
    for i=2:m-1
        for j=2:n-1
            Rmax(i,j)=max(max(J(i-1:i+1,j-1:j+1)));
            Rmin(i,j)=min(min(J(i-1:i+1,j-1:j+1)));
            Rprom(i,j)=(Rmax(i,j)+Rmin(i,j))/2;
            d=J(i-1:i+1,j-1:j+1);
            do=sort(d);
            Rmed(i,j)=do(5);
        end
    end
    subplot(3,2,1);
    imshow(I);
    subplot(3,2,2);
    imshow(uint8(J));
    subplot(3,2,3);
    imshow(uint8(Rmax));
    subplot(3,2,4);
    imshow(uint8(Rmin));
    subplot(3,2,5);
    imshow(uint8(Rprom));
    subplot(3,2,6);
    imshow(uint8(Rmed));
    ERmax=sum(sum((double(I)-Rmax).^2))/(m*n)
    ERmin=sum(sum((double(I)-Rmin).^2))/(m*n)
    ERprom=sum(sum((double(I)-Rprom).^2))/(m*n)
    ERmed=sum(sum((double(I)-Rmed).^2))/(m*n)