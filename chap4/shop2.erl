-module(shop2).
-export([run/0]).
-import(lists, [map/2, sum/1]). % To not have to use lists:map for example.

run() ->
    ThingsToBuy = [{bacon,3}, {eggs, 12}, {beer, 4}],
    total(ThingsToBuy).

cost(bacon) ->
    10;
cost(eggs) ->
    2;
cost(beer) ->
    12.

total(L) ->
    F = fun({What, N}) -> cost(What) * N end,
    ListOfCosts = map(F , L),
    sum(ListOfCosts).
