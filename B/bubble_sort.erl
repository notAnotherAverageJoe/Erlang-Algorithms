-module(bubble_sort).
-export([bubble/1, start/0, bubble_pass/1]).

start() ->
    Arr1 = [4, 2, 6, 5, 3, 1, 7],
    bubble(Arr1).

bubble(List) ->
    bubble_sort(List).

bubble_sort(List) ->
    case bubble_pass(List) of
        {SortedList, false} ->
            SortedList;
        {PartiallySortedList, true} ->
            bubble_sort(PartiallySortedList)
    end.

bubble_pass([H1, H2 | T]) when H1 > H2 ->
    io:format("Swapping ~p and ~p~n", [H1, H2]),
    {SwappedList, true} = bubble_pass([H2 | T]),
    {[H1 | SwappedList], true};
bubble_pass([H1, H2 | T]) ->
    io:format("Not swapping ~p and ~p~n", [H1, H2]),
    {UnchangedList, Swapped} = bubble_pass([H2 | T]),
    {[H1 | UnchangedList], Swapped};
bubble_pass([H]) ->
    {[H], false};
bubble_pass([]) ->
    {[], false}.
