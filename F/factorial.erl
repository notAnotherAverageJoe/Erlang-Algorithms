-module(factorial).
-export([fac/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N * fac(N - 1).

% 1 > c(factorial).
% {ok,factorial}
% 2> factorial:fac(5).
% 120
% 3>
