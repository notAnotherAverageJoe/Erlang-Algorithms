-module(num_pal).
-export([number_palindrome/1]).

number_palindrome(N) ->
    List = integer_to_list(N),
    List == lists:reverse(List).

% 1> c(num_pal).
% {ok,num_pal}
% 2> num_pal:number_palindrome(121).
% true
% 3> num_pal:number_palindrome(135).
% false
