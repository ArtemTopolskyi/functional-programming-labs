-module(task8).
-export([main/0, compress/1]).

compress([H,H | T]) -> compress([H |T]);
compress([H | []]) -> [H];
compress([H | T]) -> [H | compress(T)].

main()->
  List = [a,a,a,a,b,c,c,a,a,d,e,e,e,e],
  Compressed = compress(List),
  io:format("~p~n", [Compressed]).