-module(fibo).
-export([fibo/1]).

fibo(0) ->
    0;
fibo(1) ->
    1;
fibo(N) when N > 1 ->
    fibo(N - 1) + fibo(N - 2).

% 3 > c(fibo).
% {ok,fibo}
% 4> fibo:fibo(7).
% 13
% 5>
