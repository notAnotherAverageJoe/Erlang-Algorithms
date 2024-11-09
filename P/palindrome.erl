-module(palindrome).
-export([start/0, simple_pal/1]).

start() ->
    io:format("Enter a string to check if its a palindrome: "),
    Input = io:get_line(""),
    StrippedInput = string:trim(Input),
    Result = is_palindrome(StrippedInput),

    if
        Result ->
            io:format("~s is a palindrome.~n", [StrippedInput]);
        true ->
            io:format("~s is not a palindrome~n", [StrippedInput])
    end.

is_palindrome(S) ->
    S == lists:reverse(S).

simple_pal(N) ->
    N == lists:reverse(N).
