-module(tuples).
-export[(run/0)].

run()->
    P = {point, 10, 15},
    io:fwrite("~w~n",[P]),
    Firstname = {firstname, christoffer},
    Middlename = {middlename, ingvar},
    Lastname = {lastname, samuelsson},
    FullName = {fullname, Firstname, Middlename, Lastname},
    io:fwrite("~w~n",[FullName]),
    
    {_,_,{_,ExtractMiddlename},_} = FullName,
    io:fwrite("~w~n",[ExtractMiddlename]).
