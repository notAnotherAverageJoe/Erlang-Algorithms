-module(last_word).
-export([last_word/1, start/0]).

last_word(S) ->
    Words = string:tokens(S, " "),
    case lists:reverse(Words) of
        [] -> 0;
        [LastWord | _] -> string:len(LastWord)
    end.

start() ->
    Str1 = "Hello World",
    last_word(Str1).

% {ok,last_word}
% 4> last_word:start().
% 5
% 5>
