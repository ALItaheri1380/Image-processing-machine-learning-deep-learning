function [image] = My_Imresize_Bilinear(Input_Image, Resizing_Factor)
    n = size(Input_Image, 1);
    m = size(Input_Image, 2);
    numChannels = size(Input_Image, 3);

    new_n = ceil(n * Resizing_Factor);
    new_m = ceil(m * Resizing_Factor);
    image = zeros(new_n, new_m, numChannels);
    
    for i = 1:new_n
       for j = 1:new_m
                
           x_map = (i-1) * (n-1) / (new_n-1) + 1;
           y_map = (j-1) * (m-1) / (new_m-1) + 1;
    
           x1 = floor(x_map);
           x2 = min(x1 + 1,n);
           y1 = floor(y_map);
           y2 = min(y1 + 1, m);
            
           a = Input_Image(x1, y1, :);
           b = Input_Image(x1, y2, :);
           c = Input_Image(x2, y1, :);
           d = Input_Image(x2, y2, :);

           x = x_map - x1;
           y = y_map - y1;
       
           image(i, j, :) = a + (b-a) * y + (c-a) * x + (a - b - c + d) * x * y;
       end
    end
end
