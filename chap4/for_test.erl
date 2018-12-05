-module(for_test).
-export([run/0]).

run() ->
    for(1, 10, fun(X) -> X*X end).

for(Max, Max, F) ->
    [F(Max)];
for(I, Max, F) ->
    [F(I) | for(I+1, Max, F)].
