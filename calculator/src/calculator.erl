-module(calculator).
-export([calculate/1]).

calculate("") ->
    0;
calculate(Expression) ->
    Tokens = string:tokens(Expression, " "),
    last(Tokens).

last(Tokens) ->
    to_float(lists:last(Tokens)).

to_float(Str) ->
    float(list_to_integer(Str)).
