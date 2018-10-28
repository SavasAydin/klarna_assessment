-module(calculator).
-export([evaluate/1]).

-define(OPERATORS, ["+", "-", "*", "/"]).

evaluate(Expression) ->
    Tokens = string:tokens(Expression, " "),
    calculate(Tokens, []).

calculate([], Res) ->
    hd(Res);
calculate([H | T], Numbers) ->
    case lists:member(H, ?OPERATORS) of
        true ->
            Applied = apply_operator(H, Numbers),
            calculate(T, Applied);
        false ->
            Number = list_to_number(H),
            calculate(T, [Number | Numbers])
    end.

apply_operator(Operator, [X, Y | T]) ->
    [apply(erlang, list_to_atom(Operator), [Y,X]) | T].

list_to_number(Num) ->
    case lists:member($., Num) of
        true ->
            list_to_float(Num);
        false ->
            list_to_integer(Num)
    end.

