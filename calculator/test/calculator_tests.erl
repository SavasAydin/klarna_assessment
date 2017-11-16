-module(calculator_tests).
-include_lib("eunit/include/eunit.hrl").

should_evaluate_empty_expression_to_zero_test() ->
    Res = calculator:calculate(""),
    ?assertEqual(0, Res).
