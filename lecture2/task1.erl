-module(task1).
-export([main/0, last/1]).

last([]) ->
  nil;
last([H|[]]) ->
  H;
last([_|T]) ->
  last(T).

main()->
  io:format(task1:last([a,b,c,d,e,f,x])).
