function [output_grid] = dummy_behavior(current_grid, player, ~)
    players = ["Masone" "Twolia"];
    player_id = find(players == player); % 1 if player == "Masone", 2 if player == "Twolia"
    
    blank_spaces = find(~current_grid); % indicies of where the 0s are
    blank_spaces = blank_spaces(randperm(length(blank_spaces))); %randomize list

    target_idx = blank_spaces(1); % choose one space to mess with
    
    output_grid = current_grid;
    output_grid(target_idx) = player_id; % replace empty space with marker
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23