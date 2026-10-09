%Perform append, reverse, member search, and list length operations
%Experiment 3: Write a Prolog program to perform list manipulation operations 
%(appending two lists, reversing a list, and searching for an element).

% Append two lists

append_list([], L, L).

append_list([H|T], L, [H|R]):-
    append_list(T, L, R).


% Reverse a list

reverse_list([], []).

reverse_list([H|T], R):-
    reverse_list(T, R1),
    append_list(R1, [H], R).


% Search an element in a list

search(X, [X|_]).

search(X, [_|T]):-
    search(X, T).