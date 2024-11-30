-module(task12).
-export([decode_modified/1]).

decode_modified([]) -> 
    [];

decode_modified([{Count, Elem} | T]) when is_integer(Count) -> 
    append_duplicate(Count, Elem, decode_modified(T));

decode_modified([Elem | T]) -> 
    decode_modified([{1, Elem} | T]).
        
append_duplicate(0, _, Acc) -> 
    Acc;
append_duplicate(Count, Elem, Acc) -> 
    append_duplicate(Count - 1, Elem, [Elem | Acc]).
