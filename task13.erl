-module(task13).
-export([decode/1]).

decode([]) -> 
    [];

decode([{Count, Elem} | T]) -> 
    append_duplicate(Count, Elem, decode(T)).

append_duplicate(0, _, Acc) -> 
    Acc;
append_duplicate(Count, Elem, Acc) -> 
    append_duplicate(Count - 1, Elem, [Elem | Acc]).