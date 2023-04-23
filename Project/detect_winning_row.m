function [win_status] = detect_winning_row(current_grid, place)
    % place is a 1x2 vector of the coords of the square we're interested in

    % just some anonymous functions to make paths easier on the eyes
    reversediag = @(A) diag(flip(A));
    horizontalpath = @(A, idx) (A(idx, :))';
    verticalpath = @(A, idx) A(:, idx);
    

    if place(1) == place(2) && place(1) + place(2) == height(current_grid) + 1 % if square is on both diags
        paths = [diag(current_grid) reversediag(current_grid) horizontalpath(current_grid, place(1)) verticalpath(current_grid, place(2))];
    elseif place(1) == place(2) % if square is on top-left to bottom-right diag
        paths = [diag(current_grid) horizontalpath(current_grid, place(1)) verticalpath(current_grid, place(2))];
    elseif place(1) + place(2) == height(current_grid) + 1 % if square is on bottom-left to top-right diag
        paths = [reversediag(current_grid) horizontalpath(current_grid, place(1)) verticalpath(current_grid, place(2))];
    else
        paths = [horizontalpath(current_grid, place(1)) verticalpath(current_grid, place(2))];
    end
    


    % any(all()) is used to say "if any of the paths are completely filled by a single char"
    if any(all(paths==1))
        win_status = "Masone";
    elseif any(all(paths==2))
        win_status = "Twolia";
    else
        win_status = "neither";
    end
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23