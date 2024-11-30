-module(task9).
-export([pack/1]).
-import(task5, [reverse/1]).

pack(List) ->
    pack(List, [], []).

pack([], Acc, CurrentGroup) when length(CurrentGroup) > 0 -> 
    reverse([CurrentGroup | Acc]);

pack([H | T], Acc, [ X | CurrentGroup]) when H == X -> 
    pack(T, Acc, [X, H | CurrentGroup]);

pack([H | T], Acc, CurrentGroup) when length(CurrentGroup) > 0 -> 
    pack(T, [reverse(CurrentGroup) | Acc], [H]);

pack([H | T], Acc, []) -> 
    pack(T, Acc, [H]).

