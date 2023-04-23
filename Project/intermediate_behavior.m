function [output_grid] = intermediate_behavior(current_grid, player, turn)
    players = ["Masone" "Twolia"];
    player_id = find(players == player); % 1 if player == "Masone", 2 if player == "Twolia"    

    possible_spaces = [[1, 1]; [1, width(current_grid)]; [height(current_grid), 1]; [height(current_grid), width(current_grid)]; [mean([1 height(current_grid)]), mean([1 width(current_grid)])]];
    idx = possible_spaces(randi(length(possible_spaces)), :);
    row = idx(1);
    col = idx(2);

    if turn == 1
        output_grid = current_grid;
        output_grid(row, col) = player_id;
    else
        output_grid =  novice_behavior(current_grid, player);
    end
end