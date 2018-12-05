-module(funs).
-export([run/0]).

run()->
    L = [0,1,2,3,4,5,6,7,8,9],
    IsEven = fun(X) -> X rem 2 =:= 0 end,
    
    LMapTest = lists:map(IsEven, L),
    printList(LMapTest),

    LFilterTest = lists:filter(IsEven, L),
    printHeads(LFilterTest).

printHeads([]) ->
    [];
printHeads([H|T])->
    io:fwrite("~p~n", [H]),
    printHeads(T).

printList(L)->
    PrintOut = fun(X) -> io:fwrite("~p~n", [X]) end,
    lists:map(PrintOut, L).
