function [augmented_grid] = place_player_token(current_grid, player_id)
    augmented_grid = current_grid;

    % reshape() converts 1:9 to [[1;2;3] [4;5;6] [7;8;9]]
    disp(reshape(1:numel(current_grid), size(current_grid))) % display keypad
    disp(gridnum2boardchar(current_grid)) %display current board
    
    filled_spaces = find(current_grid); % indicies of where the 1s or 2s are

    grid_idx = 0;
    while all(grid_idx ~= 1:numel(current_grid)) || any(grid_idx == filled_spaces) % while grid_idx isn't an available spot
        grid_idx = input("Where do you want to place? (1-"+string(numel(current_grid))+")\n... ");
    end
    
    augmented_grid(grid_idx) = player_id; % place token
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23