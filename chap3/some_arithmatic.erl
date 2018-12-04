-module(some_arithmatic).
-export[(run/0)].

run()->
    X = 2 + 4,
    io:fwrite("~w~n",[X]),

    Y = 5/3,
    io:fwrite("~w~n",[Y]),
    
    B = 5 div 3,
    io:fwrite("~w~n",[B]),

    C = 5 rem 3,
    io:fwrite("~w~n",[C]).
    



    
