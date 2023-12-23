-module(task11).
-export([main/0, code_modified_rle/1]).

code_modified_rle(List) -> code_modified_rle(List, 1).
code_modified_rle([], _) -> [];
code_modified_rle([H, H | T], Num) -> code_modified_rle([H | T], Num + 1);
code_modified_rle([H | T], 1) -> [H | code_modified_rle(T, 1)];
code_modified_rle([H | T], Num) -> [{Num, H} | code_modified_rle(T, 1)].

main()->
  List = [a,a,a,a,b,c,c,a,a,d,e,e,e,e],
  Coded = code_modified_rle(List),
  io:format("~p~n", [Coded]).