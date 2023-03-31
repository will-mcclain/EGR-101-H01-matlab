function [fibby] = functiocanery(N)
    if any(N == 0:1)
        fibby = 1;
    else
        fibby = functiocanery(N-1) + functiocanery(N-2);
    end
end