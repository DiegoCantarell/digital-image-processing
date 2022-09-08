% CONVERT IMAGES TO BINARY IMAGES
I = imread('pout.tif');
J = imread('cameraman.tif');
II = im2bw(I); %We convert the image to binary
JJ = im2bw(J);
[m1,n1]=size(I);
[m2,n2]=size(J);
IN=imresize(II,[min(m1,m2),min(n1,n1)]);
JN=imresize(JJ,[min(m1,m2),min(n1,n1)]);
Iand=and(IN,JN);
Ior=or(IN,JN);
Ixor=xor(IN,JN);
Inot=not(IN);
subplot(3,2,1)
imshow(I);
subplot(3,2,2)
imshow(J)
subplot(3,2,3)
imshow(Iand)
subplot(3,2,4)
imshow(Ior)
subplot(3,2,5)
imshow(Ixor)
subplot(3,2,6)
imshow(Inot)