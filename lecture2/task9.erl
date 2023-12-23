-module(task9).
-export([main/0, pack/1]).

pack(List) -> pack(List, []).
pack([], _) -> [];
pack([H, H | T], L) -> pack([H | T], [H | L]);
pack([H | T], L) -> [[H | L] | pack(T,[] )].

main()->
  List = [a,a,a,a,b,c,c,a,a,d,e,e,e,e],
  Packed = pack(List),
  io:format("~p~n", [Packed]).