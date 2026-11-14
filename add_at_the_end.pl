% ARTI 303 - Lab 7 - Task 2
% Add an element at the end of a list.

% Base case: adding X to an empty list gives [X].
add_at_the_end(X, [], [X]).

% Keep the head and recursively add X to the end of the tail.
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

% Test queries:
% ?- add_at_the_end(4, [1,2,3], R).
% R = [1,2,3,4].
%
% ?- add_at_the_end(apple, [bread,milk], R).
% R = [bread,milk,apple].
