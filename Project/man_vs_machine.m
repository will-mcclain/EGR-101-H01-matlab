% MATLAB Final
% Will McClain
% EGR 101-01
% Due: 4/18/23


clear; clc; close all;

board = generate_board(); %exactly what it sounds like


% ask for a difficulty level with half-hearted input handling
difficulty_level = "";
while all(difficulty_level ~= ["d" "b" "s"])
    difficulty_level = lower(input("Who would you like to play against?\n\nA [d]ummy computer                           [d]\nA slightly [b]etter computer                 [b]\n[S]kynet (cannot play on even-sized boards)  [s]\n... ", "s"));
end

switch difficulty_level
    case "d"
        difficulty_level = "dummy";
    case "b"
        difficulty_level = "novice";
    case "s"
        difficulty_level = "intermediate";
end


% same thing but for player characters
player_char = "";
while all(player_char ~= ["x" "o"])
    player_char = lower(input("\n\nChoose your token\n\n[x]\n[o]\n... ", "s"));
end


% Hey so I thought it would be funny if I referred to player 1 as Mas"one"
% and player 2 as "Two"lia and I made this decision really early on so
% the code will call you a silly name from now on
%
% if it ain't broke, don't fix it


turn = 1; %use this to alternate whose turn it is
while any(board == 0, "all") %while the board ain't filled up yet
    % player with x token goes first, house rules

    % I hate the way I did this if-ladder but idrc
    if mod(turn, 2) == 1 % if it's player 1's turn
        if player_char == "x" % if YOU'RE player 1
            func = "place_player_token(board, 1)";
        else % if you ain't
            func = difficulty_level+"_behavior(board, 'Masone', " + string(turn) + ")"; %eval() let's me mess with the physical names of the functions I wanna call before I call them. Cool!
        end
    else % if it's player 2's turn
        if player_char == "o" % if YOU'RE player 2
            func = "place_player_token(board, 2)";
        else % if you ain't
            func = difficulty_level+"_behavior(board, 'Twolia', " + string(turn) + ")"; %eval() let's me mess with the physical names of the functions I wanna call before I call them. Cool!
        end
    end
        
    board = eval(func); %change the board accordingly
    
    % win is 1 if the game's been won, 0 if it's still ongoing
    % winner is the silly name of who won, if they won
    [win, winner] = detect_win(board);
    
    % duh
    if win
       break
    end

    turn = turn + 1;
end

% pretty much "if the guy who won matches your token, you won"
switch winner
    case "Masone"
        if player_char == "x"
            outcome = "Hooray!";
        else
            outcome = "I'm very disappointed in you... :(";
        end
    case "Twolia"
        if player_char == "o"
            outcome = "Hooray!";
        else
            outcome = "I'm very disappointed in you... :(";
        end
    otherwise
        outcome = "A tie!";
end

disp(gridnum2boardchar(board))
disp(outcome)