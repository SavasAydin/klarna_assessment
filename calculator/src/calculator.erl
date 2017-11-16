-module(calculator).
-export([calculate/1]).

calculate("") ->
    0;
calculate(Expression) ->
    Tokens = string:tokens(Expression, " "),
    case contains_operation(Tokens) of
	false ->
	    last(Tokens);
	true ->
	    calculate(Tokens, [])
    end.

last(Tokens) ->
    to_float(lists:last(Tokens)).


calculate([], [Res]) ->
    Res;
calculate(["+" | T], [Last, Previous]) ->
    calculate(T, [Previous + Last]);
calculate(["*" | T], [Last, Previous]) ->
    calculate(T, [Previous * Last]);
calculate(["-" | T], [Last, Previous]) ->
    calculate(T, [Previous - Last]);
calculate([N | T], Acc) ->
    calculate(T, [to_float(N) | Acc]).

to_float(Str) ->
    case lists:member($., Str) of
	true ->
	    list_to_float(Str);
	false ->
	    float(list_to_integer(Str))
    end.

contains_operation(L) ->
    Operations = ["+", "-", "*", "/"],
    lists:any(fun(X) -> lists:member(X, Operations) end, L).
