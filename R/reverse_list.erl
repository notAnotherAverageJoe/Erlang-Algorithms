-module(reverse_list).
-export([reverse_list/1, start/0]).

% Reverse the list by accumulating results in the second argument.
reverse_list(L) -> reverse_list(L, []).

% Base case: if the list is empty, return the accumulator (which is the reversed list).
reverse_list([], Acc) -> Acc;
% Recursive case: Add the head element to the accumulator and recurse on the tail.
reverse_list([H | T], Acc) -> reverse_list(T, [H | Acc]).

start() ->
    X = [1, 2, 3, 4],
    Y = reverse_list(X),
    io:fwrite("Reversed list: ~w~n", [Y]).
