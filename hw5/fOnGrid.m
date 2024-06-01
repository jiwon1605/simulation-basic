function result = fOnGrid(x, y, func)
    result = zeros(length(y), length(x));
    for i = 1:length(x)
        for j = 1:length(y)
            result(j, i) = func(x(i), y(j));
        end
    end
end