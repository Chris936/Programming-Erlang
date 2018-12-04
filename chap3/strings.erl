-module(strings).
-export([run/0]).

run()->
    loopToN(1024).

loopToN(N) ->
    loop(0, N).

loop(N, N)->
    printIWithoutConversion(N);
loop(I, N) ->
    printIWithoutConversion(I),
    loop(I+1, N).

printIWithoutConversion(I)->
    io:format("~p - ",[I]),
    io:format("~c~n",[I]).
