% here's a function
% idk how to call it outside of typing fibby(N) into the command window
function [y] = fibby(N)
    if any(N == 1:2)
        y = 1;
    else
        y = fibby(N-1) + fibby(N-2);
    end
end