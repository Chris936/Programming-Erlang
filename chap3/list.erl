-module(list).
-export([run/0]).

run() ->
    Shoppinglist = thingsToBuy(),
    {FirstItem, Shoppinglist2} = extractHead(Shoppinglist),
    io:fwrite("~w~n", [FirstItem]),
    
    {SecondItem, Shoppinglist3} = extractHead(Shoppinglist2),
    io:fwrite("~w~n", [SecondItem]),

    {ThirdItem, Shoppinglist4} = extractHead(Shoppinglist3),
    io:fwrite("~w~n", [ThirdItem]),

    {ForthItem, Shoppinglist5} = extractHead(Shoppinglist4),
    io:fwrite("~w~n", [ForthItem]).

thingsToBuy() ->
    [{bacon, 6},{eggs, 12},{beer, 4}].

extractHead([]) ->
    {{},[]};
extractHead(List) ->
    [H|T] = List,
    {H,T}.
