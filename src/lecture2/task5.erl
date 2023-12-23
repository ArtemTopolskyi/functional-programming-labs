-module(task5).
-export([main/0, reverse/2]).

reverse([], Reversed) -> Reversed;
reverse([H|T], Reversed) -> reverse(T, [H|Reversed]).

main()->
  List = [a,b,c,d,e,f,x],
  Reversed = reverse(List, []),
  io:format("~p~n", [Reversed]).
