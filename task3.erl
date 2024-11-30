-module(task3).
-export([element_at/2]).

element_at([Head | _], N) when N == 1 ->
    Head;
element_at([_ | Tail], N) ->
    element_at(Tail, N - 1).