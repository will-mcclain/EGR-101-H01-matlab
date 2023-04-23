function [output_grid] = novice_behavior(current_grid, player, ~)
    players = ["Masone" "Twolia"];
    player_id = find(players == player); % 1 if player == "Masone", 2 if player == "Twolia"
    
    % the other guy
    other_id = find(players ~= player); % 2 if player == "Masone", 1 if player == "Twolia"

    blank_spaces = find(~current_grid); % indicies of where the 0s are
    blank_spaces = blank_spaces(randperm(length(blank_spaces))); %randomize list
    
    grid_touched = 0; % if grid is untouched, it is touchable hon hon hon
    
    output_grid = current_grid;

    % check every space for an impending enemy win and prevent it
    for idx = 1:length(blank_spaces)
        grid_index = blank_spaces(idx);

        hypothetical_grid = current_grid;
        hypothetical_grid(grid_index) = other_id; % place enemy marker >:(
        
        [grid_row, grid_col] = ind2sub([height(current_grid) width(current_grid)], grid_index);

        % oh no they're gonna win
        if detect_winning_row(hypothetical_grid, [grid_row, grid_col])==players(other_id) && ~grid_touched
            output_grid(grid_index) = player_id; % stop them
            grid_touched = 1; % grid now touched, turn's over
        end
    end

    if ~grid_touched
        %dummy_behavior
        output_grid = dummy_behavior(current_grid, player);
    end
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23