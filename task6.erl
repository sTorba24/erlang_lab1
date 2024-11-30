-module(task6).
-export([is_palindrome/1]).
-import(task5, [reverse/1]).

is_palindrome(List) ->
    List == reverse(List).