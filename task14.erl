-module(task14).
-export([duplicate/1]).
-import(task5, [reverse/1]).

duplicate([]) -> 
    [];

duplicate(List) ->
    duplicate(List, []).

duplicate([H | T], Acc) -> 
    duplicate(T, [H,H | Acc]);

duplicate([], Acc) ->
    reverse(Acc).

