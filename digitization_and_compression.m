name = input("Give me the image name:  ")
I=imread(name);
imshow(I)
s = svd(double(I))
%U(:,1)*S(1,1)*V(:,1)'
%U(:,1)*S(1,1)*V(:,1)'+U(:,2)*S(2,2)*V(:,2)'
%[U, S, V] = svd(double(I))
