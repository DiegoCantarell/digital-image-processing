function Is = mapeolineal(I)
[m,n] = size(I);
I = double(I);
mi1=min(min(I));
ma1=max(max(I));
Is = double(I);
Is = (255/(ma1-mi1)*(I-mi1));
end
%>>I = imread('pout.tif');
%>>Is = mapeolineal(I)
%>>subplot(1,2,1)
%>>imshow(I)
%>>subplot(1,2,2)
%>>imshow(uint8(Is))