-module(record).
-export([run/0]).

-record(
   workout,{
	    type,
	    time = 30, % Default value.
	    location
	   }).

run() ->
    Monday = #workout{type = swimming, time = 45, location = indoor_pool},
    Wednesday = #workout{type = karate, location = garden},
    Friday = #workout{type = lifting_stones, time = 20, location = back_yard},
    Sunday = #workout{type = walk, time = 45, location = park},
    
    do_workout(Monday),
    do_workout(Wednesday),
    do_workout(Friday),
    do_workout(Sunday).

do_workout(Workout) when is_record(Workout, workout) ->
    #workout{type = Type, time = Time, location = Location} = Workout,
    io:fwrite("~p, ~p, ~p", [Type, Type, Type]),
    io:fwrite(" for ~p minutes", [Time]),
    io:fwrite(" in a ~p~n", [Location]).
