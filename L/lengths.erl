-module(lengths).
-author("Joe.S").
-export([start/0, list_length/1, list_length/2]).

list_length(L) ->
    io:fwrite("Starting list_length with list: ~w~n", [L]),
    list_length(L, 0).

list_length([], Acc) ->
    io:fwrite("Base case reached. Accumulator: ~w~n", [Acc]),
    Acc;
list_length([H | T], Acc) ->
    io:fwrite("Processing element: ~w, Accumulator before increment: ~w~n", [H, Acc]),
    list_length(T, Acc + 1).

start() ->
    X = [1, 2, 3, 4],
    io:fwrite("Initial list: ~w~n", [X]),
    Y = list_length(X),
    io:fwrite("Final result: ~w~n", [Y]).
