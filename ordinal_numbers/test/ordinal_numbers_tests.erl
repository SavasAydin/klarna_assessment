-module(ordinal_numbers_tests).
-include_lib("eunit/include/eunit.hrl").

convert_0_to_0_test() ->
    Res = ordinal_numbers:to_ordinal(0),
    ?assertEqual("0", Res).

convert_1_to_1st_test() ->
    Res = ordinal_numbers:to_ordinal(1),
    ?assertEqual("1st", Res).
