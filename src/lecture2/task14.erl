-module(task14).
-export([main/0, duplicate/1]).

duplicate([]) -> [];
duplicate([H | T]) -> [H,H | duplicate(T)].

main()->
  List = [a, b, c, c, d],
  Dupplicated = duplicate(List),
  io:format("~p~n", [Dupplicated]).
