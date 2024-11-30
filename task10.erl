-module(task10).
-export([encode/1]).
-import(task9, [pack/1]).
-import(task4, [len/1]).
-import(task5, [reverse/1]).

encode(List) ->
    encode(pack(List), []).

encode([], Acc) ->
    reverse(Acc);

encode([[SmallHead | SmallTail] | T], Acc) ->
    encode(T, [{ len(SmallTail) + 1, SmallHead} | Acc]).
