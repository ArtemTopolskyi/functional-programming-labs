-module(task4).
-export([main/0, len/1]).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

main()->
  List = [a,b,c,d,e,f,x],
  Count = len(List),
  io:format("~p~n", [Count]).
