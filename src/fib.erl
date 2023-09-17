-module(fib).

-export([fib/1]).

fib(0) ->
  1;
fib(1) ->
  1;
fib(N) when N > 1 ->
  fib_iter(N, 0, 1).

fib_iter(0, Acc, _Next) ->
  Acc;
fib_iter(Idx, Acc, Next) ->
  fib_iter(Idx - 1, Next, Acc + Next).
