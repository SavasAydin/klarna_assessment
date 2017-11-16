-module(calculator).
-export([calculate/1]).

-define(OPERATIONS, ["+", "-", "*", "/"]).

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
calculate([H| T], Acc) ->
    NewAcc = evaluate(H, Acc),
    calculate(T, NewAcc).

evaluate("+", [Last, Previous | T]) ->
    [Previous + Last | T];
evaluate("*", [Last, Previous | T]) ->
    [Previous * Last | T];
evaluate("-", [Last, Previous | T]) ->
    [Previous - Last | T];
evaluate("/", [Last, Previous | T]) ->
    [Previous / Last | T];
evaluate(X, L) ->
    [to_float(X) | L].

to_float(Str) ->
    case lists:member($., Str) of
	true ->
	    list_to_float(Str);
	false ->
	    float(list_to_integer(Str))
    end.

contains_operation(L) ->
    lists:any(fun(X) -> lists:member(X, ?OPERATIONS) end, L).
