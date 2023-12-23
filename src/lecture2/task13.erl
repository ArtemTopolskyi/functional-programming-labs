-module(task13).
-export([main/0, decode_rle/1]).

decode_rle([]) -> [];
decode_rle([{0, _} | T]) -> decode_rle(T);
decode_rle([{Num, Atom} | T]) -> [Atom | decode_rle([{Num-1, Atom} | T])].

main()->
  List = [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}],
  Decoded = decode_rle(List),
  io:format("~p~n", [Decoded]).