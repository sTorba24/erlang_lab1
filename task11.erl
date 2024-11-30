-module(task11).
-export([encode_modified/1]).
-import(task9, [pack/1]).
-import(task4, [len/1]).
-import(task5, [reverse/1]).

encode_modified(List) ->
    encode_modified(pack(List), []).

encode_modified([], Acc) ->
    reverse(Acc);

encode_modified([[SmallHead | SmallTail] | T], Acc) when SmallTail == [] ->
    encode_modified(T, [SmallHead | Acc]);

encode_modified([[SmallHead | SmallTail] | T], Acc) ->
    encode_modified(T, [{ len(SmallTail) + 1, SmallHead} | Acc]).
