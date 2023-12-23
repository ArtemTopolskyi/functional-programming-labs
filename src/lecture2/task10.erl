-module(task10).
-export([main/0, code_rle/1]).

code_rle(List) -> code_rle(List, 1).
code_rle([], _) -> [];
code_rle([H, H | T], Num) -> code_rle([H | T], Num + 1);
code_rle([H | T], Num) -> [{Num, H} | code_rle(T, 1)].

main()->
  List = [a,a,a,a,b,c,c,a,a,d,e,e,e,e],
  Coded = code_rle(List),
  io:format("~p~n", [Coded]).