-module(task7).
-export([flatten/1]).

flatten(List) ->
    flatten(List, []).

flatten([], Acc) ->
    Acc;

flatten([H | T], Acc) when is_list(H) ->
    flatten(T, flatten(H, Acc));

flatten([H | T], Acc) ->
    flatten(T, append(Acc, [H])).

append([], L2) ->
    L2;
append([H | T], L2) ->
    [H | append(T, L2)].