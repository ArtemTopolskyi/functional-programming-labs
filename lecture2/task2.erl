-module(task2).
-export([main/0, last_two/1]).

last_two([X,Y]) -> [X,Y];
last_two([_|T]) -> last_two(T).

main()->
  erlang:display(task2:last_two([a,b,c,d,e,f,x])).
