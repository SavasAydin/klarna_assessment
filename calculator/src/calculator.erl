-module(calculator).
-export([calculate/1]).

calculate("") ->
    0;
calculate(Expression) ->
    Tokens = string:tokens(Expression, " "),
    case contains_operation(Tokens) of
	false ->
	    last(Tokens)
    end.

last(Tokens) ->
    to_float(lists:last(Tokens)).

to_float(Str) ->
    float(list_to_integer(Str)).

contains_operation(L) ->
    Operations = ["+", "-", "*", "/"],
    lists:any(fun(X) -> lists:member(X, Operations) end, L).
