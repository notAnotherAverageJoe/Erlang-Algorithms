-module(rev_list_method).
-export([start/0]).

start() ->
    List1 = [1, 2, 3, 4],
    RevList = lists:reverse(List1),
    io:format("~w~n", [RevList]).

% 1> c(rev_list_method).
% {ok,rev_list_method}
% 2> rev_list_method:start().
% [4,3,2,1]
% ok
% 3>
