A = [1,2,3;4 5 6; 7, 8, 9;10, 11, 12; 13, 14, 15; 16, 17, 18;19, 20, 21; 22, 23, 24]
[U, S, V] = svd(A)
U(:,1)*S(1,1)*V(:,1)'
U(:,1)*S(1,1)*V(:,1)'+U(:,2)*S(2,2)*V(:,2)'