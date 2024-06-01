function count = RandomWalk2D(n)

k = 0; xc = 0; yc = 0;
count = 0;
while abs(xc)<n && abs(yc)< n
    r = rand(1);
    if r <= .25
        yc = yc+1; % Hop North
    elseif r<=.50
        xc = xc+1; % Hop East
    elseif r < .75
        yc = yc-1; % Hop South
    else
        xc = xc-1; % Hop West
    end
    k = k+1; x(k) = xc; y(k) = yc;
    if xc == 0&& yc==0
        count =  count+1;
    end
end