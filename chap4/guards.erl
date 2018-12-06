-module(guards).
-export([run/0]).

run() ->
    io:fwrite("~p~n", [dontAddEven(10,2)]),% Fails
    io:fwrite("~p~n", [dontAddEven(3,4)]), % Suceeds
    io:fwrite("~p~n", [dontAddEven(4,3)]), % Suceeds
    io:fwrite("~p~n", [dontAddEven(1,1)]). % Suceeds
    
% Both odd.
dontAddEven(X,Y) when (Y rem 2 =/= 0), 
		      (X rem 2 =/= 0) ->
    X+Y;
% At least one odd.
dontAddEven(X, Y) when (X rem 2 =/= 0) or
		       (Y rem 2 =/= 0) ->
    X+Y;
% Both even.
dontAddEven(X, Y) ->
    fail.
