function [x y] = RandomWalk2D(n)

k = 0; xc = 0; yc = 0;
while abs(xc)<n && abs(yc)< n
    r = rand(1);
    if r <= .25
        yc = yc+1; 
    elseif r<=.50
        xc = xc+1; 
    elseif r < .75
        yc = yc-1; 
    else
        xc = xc-1;
    end
    k = k+1; x(k) = xc; y(k) = yc;
end