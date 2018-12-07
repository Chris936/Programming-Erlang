-module(map).
-export([run/0]).

run() ->
    Meal = #{dish =>burger, on_the_side => dip, drink => coke},
    Meals = create_n_meals(3, Meal),
    Meals2 = update_meals(drink, lemon_juice, Meals),
    add_meal_component(dessert, ice_cream, Meals2).

create_n_meals(N, M) when is_map(M) ->
    [M || _ <- lists:seq(1,N)].

update_meals(Key, Val, L) ->
    [M#{Key := Val} || M <-L,
		       is_map(M), 
		       maps:is_key(Key, M)].

add_meal_component(Key, Val, L) ->
    [M#{Key => Val} || M <-L,
		       is_map(M)].
