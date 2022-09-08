img = ones(256,256,3) * 768;    % 3 channels: R G B
img = uint8(img);               % we are using integers 0 .. 255
% top left square:
img(1:256, 1:256, 1) = 255;       % set R component to maximum value
img(1:256, 1:256, [2 3]) = 0;     % clear G and B components
% top right square:
img(1:512, 256:512, [1 3]) = 0;  % clear R and B components
img(1:256, 256:512, 2) = 255;    % set G component to its maximum
% bottom left square:
img(1:768, 512:768, [1 2]) = 0;
img(1:256, 512:768, 3) = 255;

img(256:768, 1:768, [1 2 3]) = 255;

imshow(img);