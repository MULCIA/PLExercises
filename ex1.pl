counter(X, L) :-            % Calling predicate
	count_occur(X, L, 0).   % Predicate counting occurrences

count_occur(X, [], N) :-    % Base case, If list is empty then print message
	format("Element ~d occurrs ~d times. ~n", [X,N]). 
count_occur(X, [X|T], N) :- % If current item is the item that we are looking for
	N2 is N + 1,            % Increment counter
    count_occur(X, T, N2).  % Call recursively only using tail of the list and incremented counter
count_occur(X, [Y|T], N) :- % If current item is not the item that we are looking for
    X \= Y,          
    count_occur(X, T, N).   % Call recursively only using tail of the list and same counter