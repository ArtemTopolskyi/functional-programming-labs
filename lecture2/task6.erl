-module(task6).
-export([main/0, is_palindrome/1, reverse/2]).

reverse([], Reversed) -> Reversed;
reverse([H|T], Reversed) -> reverse(T, [H|Reversed]).

is_palindrome(List) -> List == reverse(List, []).

main()->
  List = [a,b,c,b,a],
  Result = is_palindrome(List),
  io:format("~p~n", [Result]).
