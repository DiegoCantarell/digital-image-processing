function Is = mapeolineal(I)
[m,n] = size(I);
mi1=min(min(I));
ma1=max(max(I));
I = double(I);
Is = (255/(ma1-mi1)*(I-mi1));
end
%I = imread('pout.tif');
%Is = mapeolineal(I)