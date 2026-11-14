% ARTI 303 - Lab 7 - Task 1
% Delete every occurrence of an element from a list.

% Base case: an empty list produces an empty result.
deleteElement(_, [], []).

% If the head is the element to delete, skip it.
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% Otherwise, keep the head and continue with the tail.
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).

% Test queries:
% ?- deleteElement(1, [1,2,1,3,1], R).
% R = [2,3].
%
% ?- deleteElement(3, [1,2,3,4], R).
% R = [1,2,4].
