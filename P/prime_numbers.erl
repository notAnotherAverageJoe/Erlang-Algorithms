-module(prime_numbers).
-export([start/0, prime_checker/1]).

prime_checker(N) when N >= 2 ->
    is_prime(N, 2);
prime_checker(_) ->
    false.

is_prime(N, F) when F * F > N ->
    true;
is_prime(N, F) when N rem F == 0 ->
    false;
is_prime(N, F) ->
    is_prime(N, F + 1).

start() ->
    Test = 29,
    prime_checker(Test).

% {ok,prime_numbers}
% 2> c(prime_numbers).
% {ok,prime_numbers}
% 3> prime_numbers:start().
% true
% {ok,prime_numbers}
% 6> prime_numbers:prime_checker(15).
% false
% 7>
