-module(permutations).
-export([run/0]).

% Gives all permutations of a list.

run() ->
    permutate("Chris").

permutate([]) -> [[]];
permutate(L) ->
    [[H|T] || H <- L,
	      T <- permutate(L--[H])].
	      
