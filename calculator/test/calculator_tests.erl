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

should_support_addition_test() ->
    Res = calculator:calculate("1 2 +"),
    ?assertEqual(3.0, Res).

should_support_multiplication_test() ->
    Res = calculator:calculate("1 2 *"),
    ?assertEqual(2.0, Res).

should_support_subtraction_test() ->
    Res = calculator:calculate("1 2 -"),
    ?assertEqual(-1.0, Res).

should_support_division_test() ->
    Res = calculator:calculate("4 2 /"),
    ?assertEqual(2.0, Res).

should_support_more_than_one_operation_test() ->
    Res = calculator:calculate("3 2 1 - *"),
    ?assertEqual(3.0, Res).

should_support_all_operations_test() ->
    Res = calculator:calculate("7 4 5 + * 3 - 10 /"),
    ?assertEqual(6.0, Res).
