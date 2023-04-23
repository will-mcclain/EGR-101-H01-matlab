function [outcome] = simulate_bot_match(behavior)
    % behavior is a 2x2 string matrix that contains the bot name with
    % their AI level row-wise
    % ex. ["Me", "Cool guy"; "Joe Biden", "President of the United States"]

    % bots get no creativity and have to play on a 3x3 board
    board = generate_board(3);
    
    turn = 1; % keeps track of whose turn it is
    while any(board == 0, "all") % while board not filled up
        whose = mod(turn-1,2)+1; % flips between 1 and 2
        % a string containing the function text
        % ex. "foo(bar)"
        % later run with eval()
        func = behavior(whose, 2)+"_behavior(board, '" + behavior(whose, 1)+"'," + string(turn) + ")";
        
        board = eval(func); %augment board
        
        % win = 1 if game has been won yet, 0 if not
        % winner is the silly name of who won, if they won
        [win, winner] = detect_win(board);
        
        % duh
        if win
            break
        end

        turn = turn + 1;
    end
    
    % output {the winner, their id}
    switch winner
        case "Masone"
            outcome = {winner, 1};
         case "Twolia"
            outcome = {winner, 2};
        otherwise
            outcome = {winner, 3};
    end
end


% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23