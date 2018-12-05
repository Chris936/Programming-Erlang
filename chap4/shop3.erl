-module(shop3).
-export([run/0]).

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
    CostList = [cost(A) * B || {A, B} <- L],
    lists:sum(CostList).
