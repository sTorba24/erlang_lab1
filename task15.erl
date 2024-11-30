-module(task15).
-export([replicate/2]).

replicate([], _) -> [];
replicate([H | T], N) ->
    append_duplicate(N, H, replicate(T, N)).

append_duplicate(0, _, Acc) -> Acc;
append_duplicate(Count, Elem, Acc) ->
    append_duplicate(Count - 1, Elem, [Elem | Acc]).