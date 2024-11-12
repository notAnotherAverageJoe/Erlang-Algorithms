-module(flatten_arr).
-export([start/0]).

% if the input is ([[1,2,3],[4,5,6],[7,8,9]])
% it should return [1,2,3,4,5,6,7,8,9]

flatten_arr(Matrix) ->
    %% first we will make a function to concatenate
    Concat = fun(Sublist, Acc) -> Sublist ++ Acc end,
    lists:foldr(Concat, [], Matrix).

start() ->
    Array1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]],
    flatten_arr(Array1).

% 1 > c(flatten_arr).
% {ok,flatten_arr}
% 2> flatten_arr:start().
% [1,2,3,4,5,6,7,8,9]
% 3> [[1,2,3],[4,5,6],[7,8,9]]
