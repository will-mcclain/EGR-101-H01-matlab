function [board] = generate_board(size_param)
    arg_optional = ~nargin; % 1 if no param has been put in, 0 if one has

    % if no size arg has been put it, the computer asks by itself
    % if one has, go with the hard-coded param
    if arg_optional
        size = input("How large is the board?(NxN) ", "s");
    else
        size = size_param;
    end
    
    % input handling, if input is an unexceptable value, just go with 3
    % 2x2 tic-tac-toe is no fun, "uhfsiud"x"deyweigew" tic-tac-toe is
    % impossible
    if ischar(size)
        if all(isstrprop(size,'digit')) && str2double(size) >= 3
            size = str2double(size);
        else
            size = 3;
        end
    end
    
    % make board and send it out
    board = zeros(size);
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23