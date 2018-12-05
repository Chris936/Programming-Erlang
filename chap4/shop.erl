-module(shop).
-export([run/0]).

run()->
    ThingsToBuy = [{bacon,3}, {eggs, 12}, {beer, 4}],
    total(ThingsToBuy).

cost(bacon) ->
    10;
cost(eggs) ->
    2;
cost(beer) ->
    12.

total([H|T])->
    {What, N} = H,
    CostN = cost(What) * N,
    CostN + total(T);
total([])->
    0.
