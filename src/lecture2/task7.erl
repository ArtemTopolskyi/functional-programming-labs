-module(task7).
-export([main/0, flatten/1]).

flatten(List) -> flatten(List, []).
flatten([], List) -> List;
flatten([H | T], List) -> flatten(H, flatten(T,List));
flatten(H, List) -> [H | List].

main()->
  List = [a,[],[b,[c,d],e]],
  Flattened = flatten(List),
  io:format("~p~n", [Flattened]).
