function [board] = gridnum2boardchar(current_grid)
    % idk this is self-explanatory but I use it to make the ugly numbers
    % become pretty Xs and Os to display to user
    board = string(zeros(height(current_grid)));
    board(current_grid == 0) = "-";
    board(current_grid == 1) = "x";
    board(current_grid == 2) = "o";
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23