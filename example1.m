function [x,y] = ejemplo1()
    I = imread('onion.png');
    subplot(2,2,1)
    imshow(I)
    subplot(2,2,2)
    x = I(10,:,1)
    plot(x)
    subplot(2,2,3)
    imshow(I(:,:,1))
end