-module(calculator_tests).
-include_lib("eunit/include/eunit.hrl").

should_evaluate_empty_expression_to_zero_test() ->
    Res = calculator:calculate(""),
    ?assertEqual(0, Res).

should_return_last_number_if_no_operations_found_test() ->
    Res = calculator:calculate("1 2 3"),
    ?assertEqual(3.0, Res).

should_return_last_float_if_no_operations_found_test() ->
    Res = calculator:calculate("1 2 3.5"),
    ?assertEqual(3.5, Res).
