for i =1:256
    for j=1:256
        Il(i,j) = 0;
    end
end

for i = 100: 129
    for j=123:150
        Il(i,j) = 1;
    end
end
for i = 125: 154
    for j=95:124
        Il(i,j) = 1;
    end
end
imshow(Il);