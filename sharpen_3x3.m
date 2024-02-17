function [op]= sharpen_3x3(temp)
    ip = reshape(temp, [28 28]);
    
    r=28;       c=28;
    
    lap_img=ip;
    op=ip;

    for i=2:(r-1)
        for j=2:(c-1)

            x(1)= ip(i-1,j-1);      x(2)= ip(i,j-1);        x(3)= ip(i+1,j-1);
            x(4)= ip(i-1,j);        x(5)= ip(i,j);          x(6)= ip(i+1,j);
            x(7)= ip(i-1,j+1);      x(8)= ip(i,j+1);        x(9)= ip(i+1,j+1);

            temp=(x(6)+x(4)+x(2)+x(8))-(4*x(5));
        
            lap_img(i,j)=temp;
        end
    end
    
    %Final Processing with Laplacian Image
    for i=2:(r-1)
        for j=2:(c-1) 
           % op(i,j)= 2*ip(i,j)-lap_img(i,j);
           op(i,j)= 2*ip(i,j)-lap_img(i,j);
        end
    end
    
    imshow(op);

end