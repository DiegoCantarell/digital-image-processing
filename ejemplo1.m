function [x,y] = ejemplo1()
    I = imread('onion.png');
    subplot(2,2,1)
    imshow(I)
    subplot(2,2,2)
    x = I(10,:,1);
    plot(x)
    imshow(I(:,:,2))
    subplot(2,2,4)
    imshow(I(:,:,2))
end