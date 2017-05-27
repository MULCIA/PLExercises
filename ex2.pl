finder(X, L) :- get_index(X, L, 0).

get_index(X, [], N) :- format("Element ~d not found. ~n", [X,N]).
get_index(X, [X|T], N) :- format("Element ~d found at index ~d. ~n", [X,N]).  
get_index(X, [Y|T], N) :- 
    X \= Y,          
    N2 is N + 1,
    get_index(X, T, N2). 