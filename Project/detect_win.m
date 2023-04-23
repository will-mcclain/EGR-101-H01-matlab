function [win, winner] = detect_win(current_grid)
    % hey the game just started, no one has won yet
    win = 0;
    winner = "neither";
    % look at every square and check if it's a part of a winning row
    % win = 1 if yes and winner is who won, then break out of function
    for idx = 1:height(current_grid)
        for jdx = 1:width(current_grid)
            if detect_winning_row(current_grid, [idx, jdx]) ~= "neither"
                win = 1;
                winner = detect_winning_row(current_grid, [idx, jdx]);
                break
            end
        end
        if win
            break
        end
    end
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23