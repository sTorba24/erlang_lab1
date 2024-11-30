-module(task8).
-export([compress/1]).
-import(task5, [reverse/1]).

compress(List) ->
    compress(List, []).

compress([], Acc) ->
    reverse(Acc);

compress([H, H | T], Acc) ->
    compress([H | T], Acc);

compress([H | T], Acc) ->
    compress(T, [H | Acc]).