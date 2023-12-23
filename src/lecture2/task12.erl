-module(task12).
-export([main/0, decode_modified_rle/1]).

decode_modified_rle(List) -> decode_modified_rle(List, 1).
decode_modified_rle([], 1) -> [];
decode_modified_rle([{Num, Str} | T], 1) -> decode_modified_rle([Str | T], Num);
decode_modified_rle([H | T], 1) -> [H | decode_modified_rle(T, 1)];
decode_modified_rle([Str | T], Num) -> [Str | decode_modified_rle([Str | T], Num - 1)].

main()->
  List = [{4,a},b,{2,c},{2,a},d,{4,e}],
  Decoded = decode_modified_rle(List),
  io:format("~p~n", [Decoded]).