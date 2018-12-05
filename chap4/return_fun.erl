-module(return_fun).
-export([run/0]).

run()->
    List = [bacon, eggs, beer],
    
    Test = makeTest(List),
    Test(cheese), %false
    Test(bacon), %true
    
    BadList = [corn_flakes, ketchup, beer, pineapple],
    lists:filter(Test, BadList). % beer

makeTest(L)->
    fun(X) -> lists:member(X, L) end.


