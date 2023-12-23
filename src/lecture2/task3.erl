-module(task3).
-export([main/0, element_at/2]).


element_at([], _) -> nill;
element_at([H|T], N) ->
  case N of
    1 -> H;
    _ -> element_at(T, N-1)
  end.

main()->
  io:format(task3:element_at([a,b,c,d,e,f,x], 4)).
