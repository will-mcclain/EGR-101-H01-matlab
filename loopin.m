for idx = 1:90
    x(idx) = idx;
end

for idx = x
    y(idx) = 2*(x(idx));
end


plot(x, y)