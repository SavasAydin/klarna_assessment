-module(calculator_tests).
-include_lib("eunit/include/eunit.hrl").

numbers_without_operator_returns_last_value_test() ->
    Expression = "2 1 3",
    Res = calculator:evaluate(Expression),
    ?assertEqual(3, Res).

should_support_addition_test() ->
    Expression = "2 1 +",
    Res = calculator:evaluate(Expression),
    ?assertEqual(3, Res).

should_support_subtraction_test() ->
    Expression = "2 1 -",
    Res = calculator:evaluate(Expression),
    ?assertEqual(1, Res).

should_support_multiplication_test() ->
    Expression = "3 2 *",
    Res = calculator:evaluate(Expression),
    ?assertEqual(6, Res).

should_support_division_test() ->
    Expression = "4 2 /",
    Res = calculator:evaluate(Expression),
    ?assertEqual(2.0, Res).

should_support_floating_numbers_test() ->
    Expression = "3.0 2.0 +",
    Res = calculator:evaluate(Expression),
    ?assertEqual(5.0, Res).

should_support_multiple_operators_in_order_test() ->
    Expression = "3 2 1 - *",
    Res = calculator:evaluate(Expression),
    ?assertEqual(3, Res).

should_support_multiple_operators_in_mix_order_test() ->
    Expression = "7 4 5 + * 3 - 10 /",
    Res = calculator:evaluate(Expression),
    ?assertEqual(6.0, Res).
