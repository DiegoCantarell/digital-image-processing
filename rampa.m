%VOLTEAR LAS COLUMNAS A HORIZONTALES
m=256;
n=256;
figure(1)
for i=1:m
    for j=1:n
        f(j,i)=0.1*(i-1);
        fsin(j,i)=sin(f(j,i));
        fcos(j,i)=cos(f(j,i));
    end
end
subplot(1,3,1)
imshow(uint8(f))
xlabel('f(x,y)=0.1y')
subplot(1,3,2)
imshow(fsin)
xlabel('sin(f(x,y)=0.1y)')
subplot(1,3,3)
imshow(fcos)
xlabel('cos(f(x,y)=0.1y')