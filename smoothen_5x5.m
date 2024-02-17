function [ip]= smoothen_5x5(temp)
    ip = reshape(temp, [28 28]);
    
    r=28;       c=28;
    
    for i=3:2:(r-2)
        for j=3:2:(c-2)

            x(1)= ip(i-2,j-2);      x(2)=ip(i-1,j-2);    	x(3)= ip(i,j-2);      x(4)=ip(i+1,j-2);    	x(5)= ip(i+2,j-2);
            x(6)=ip(i-2,j-1);    	x(7)= ip(i-1,j-1);      x(8)= ip(i,j-1);      x(9)= ip(i+1,j-1);	x(10)=ip(i+2,j-1);    
            x(11)= ip(i-2,j);       x(12)= ip(i-1,j);       x(13)= ip(i,j);       x(14)= ip(i+1,j);     x(15)= ip(i+2,j);
            x(16)=ip(i-2,j+1);    	x(17)= ip(i-1,j+1);     x(18)= ip(i,j+1);     x(19)= ip(i+1,j+1);	x(20)=ip(i+2,j+1);    
            x(21)= ip(i-2,j+2);     x(22)=ip(i-1,j+2);    	x(23)= ip(i,j+2);     x(24)=ip(i+1,j+2);    x(25)= ip(i+2,j+2);

            temp=round(sum(x)/9);
            ip(i,j)=temp;
        end
    end

    imshow(ip);
end