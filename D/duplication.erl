-module(duplication).
-export([start/0]).

dupe(0, _) ->
    [];
dupe(Num, Word) when Num > 0 ->
    [Word | dupe(Num - 1, Word)].

start() ->
    Words = "Hello, Erlang!",
    dupe(10, Words).
