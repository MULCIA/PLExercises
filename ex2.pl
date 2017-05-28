finder(X, L) :-             % Calling predicate
	get_index(X, L, 0).     % Predicate getting index of the item if exist

get_index(X, [], N) :-      % First base case, If list if empty and element has not found then print message 
	format("Element ~d not found. ~n", [X,N]).
get_index(X, [X|T], N) :-   % Second base case, If list if empty and element has found then print message
	format("Element ~d found at index ~d. ~n", [X,N]).  
get_index(X, [Y|T], N) :-   % If current item is not the item that we are looking for
    X \= Y,          
    N2 is N + 1,            % Update index
    get_index(X, T, N2).    % Call recursively to try to find the element