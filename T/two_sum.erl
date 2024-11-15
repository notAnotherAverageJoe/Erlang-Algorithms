-module(two_sum).
-export([two_sum/2, start/0]).
start() ->
    Arr1 = [2, 7, 11, 15],
    Tar = 9,
    two_sum(Arr1, Tar).

two_sum(Nums, Target) ->
    two_sum_helper(Nums, Target, #{}, 0).

two_sum_helper([], _, _, _) ->
    {error, "No target found"};
two_sum_helper([Num | Rest], Target, Seen, Index) ->
    NeededValue = Target - Num,
    case maps:is_key(NeededValue, Seen) of
        true ->
            [maps:get(NeededValue, Seen), Index];
        false ->
            NewSeen = maps:put(Num, Index, Seen),
            two_sum_helper(Rest, Target, NewSeen, Index + 1)
    end.

% 1 > c(two_sum).
% {ok,two_sum}
% 2> two_sum:start().
% [0,1]
% 3>
