function[op]=calculate_power(gamma, op)

[r,c]=size(op);

      for i=1:r
        for j=1:c
            r=op(i,j);
            x=1*(r^gamma);
            op(i,j)=x;
        end
      end

    op = im2uint8(op);
    figure(3), imshow(op);
   
end