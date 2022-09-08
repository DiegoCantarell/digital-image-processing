for i=1:256
    for j=1:256
        p(i,j)=0;
    end;
end;
for i=80:176
    for j=80:176
        p(i,j)=1;
    end;
end;
imshow(p)

%figure(2)
%imshow(p)