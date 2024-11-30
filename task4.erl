-module(task4).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], Acc) ->
    Acc;
len([_ | T], Acc) ->
    len(T, Acc + 1).