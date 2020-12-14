function output = zero_crossing(x) % x is a windowed signal of size (102,8)
   output(1, size(x,2)) = 0;
   for j = 1:size(x,2) % looping over columns
       for i = 1:(size(x,1)-1) %looping over rows
            if (x(i,j)>0 && x((i+1),j)<0) || (x(i,j)<0 && x((i+1),j)>0)
                output(1,j) = output(1,j) + 1;
            end
       end
   end
end
