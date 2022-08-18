I = imread('pout.tif');
[m,n] = size(I);
%Encontrar el máximo y el mínimo
mi1=min(min(I))
ma1=max(max(I))