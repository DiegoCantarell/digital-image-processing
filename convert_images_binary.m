% CONVERT IMAGES TO BINARY IMAGES
I = imread('pout.tif');
J = imread('cameraman.tif');
II = im2bw(I); %We convert the image to binary
JJ = im2bw(J);
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(J)
subplot(2,2,3)
imshow(II)
subplot(2,2,4)
imshow(JJ)
