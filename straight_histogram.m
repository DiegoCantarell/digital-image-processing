function untitled
    I=imread('pout.tif'); 
    [m,n]=size(I); 
    L1=min(min(I)) 
    U1=max(max(I)) 
    L2=input('Dame el valor de L2 (Entero entre 0 y 255)='); 
    U2=input('Dame el valor de U2 (Entero entre O y 255)=');
    KTE=(U2-L2)/(U1-L1);
    for i=1:m
        for j=1:n 
            R(i,j)=L2+KTE*(I(i,j)-L1);
        end 
    end
    I=uint8(I);
    R=uint8(R);
    subplot(2,2,1)
    imshow(I)
    subplot(2,2,2)
    imhist((I))
    subplot(2,2,3)
    imshow(R)
    subplot(2,2,4)
    imhist((R))
end
