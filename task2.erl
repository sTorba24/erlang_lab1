-module(task2).
-export([but_last/1]).

but_last(List) when length(List) == 2 ->
    List;
but_last([_ | Tail]) ->
    but_last(Tail).