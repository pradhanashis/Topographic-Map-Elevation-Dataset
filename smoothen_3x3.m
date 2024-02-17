function [ip]= smoothen_3x3(temp)
    ip = reshape(temp, [28 28]);
    
    r=28;       c=28;
    
    ip = imnoise(ip,'gaussian');
    
    for i=2:(r-1)
        for j=2:(c-1)

            x(1)= ip(i-1,j-1);      x(2)= ip(i,j-1);        x(3)= ip(i+1,j-1);
            x(4)= ip(i-1,j);        x(5)= ip(i,j);          x(6)= ip(i+1,j);
            x(7)= ip(i-1,j+1);      x(8)= ip(i,j+1);        x(9)= ip(i+1,j+1);

            temp=round(sum(x)/9);
            ip(i,j)=temp;
        end
    end

    imshow(ip);
end