-module(case_example).
-export([run/0]).

run() ->
    odds_and_even_acc([1,2,3,4],[],[]).

odds_and_even_acc([H|T], Odds, Evens) ->
    case (H rem 2) of
	1 -> odds_and_even_acc(T, [H |Odds], Evens);
	0 -> odds_and_even_acc(T, Odds, [H|Evens])
    end;
odds_and_even_acc([], Odds, Evens) ->
    {Odds, Evens}.
