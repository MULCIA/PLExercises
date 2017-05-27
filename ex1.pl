counter(X, L) :- count_occur(X, L, 0).

count_occur(X, [], N) :- format("Element ~d occurrs ~d times. ~n", [X,N]).
count_occur(X, [X|T], N) :- 
	N2 is N + 1,
    count_occur(X, T, N2).    
count_occur(X, [Y|T], N) :- 
    X \= Y,          
    count_occur(X, T, N).