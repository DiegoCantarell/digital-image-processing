nombre = input("Give me the image name:  ")
I=imread(nombre);
imshow(I)
[m,n] = size(I)
[U, S, V] = svd(double(I));
r = m
r2 = 0
for i=1:m
    for j=1:n
      if(r2 <= r)
        I =  U(:,r2)*S(r2,r2)*V(:,r2)'
        r2 += 1
      end
    end
end
%s = svd(double(I))
%U(:,1)*S(1,1)*V(:,1)'
%U(:,1)*S(1,1)*V(:,1)'+U(:,2)*S(2,2)*V(:,2)'
%[U, S, V] = svd(double(I))