-module(ordinal_numbers_tests).
-include_lib("eunit/include/eunit.hrl").

convert_0_to_0_test() ->
    Res = ordinal_numbers:to_ordinal(0),
    ?assertEqual("0", Res).

convert_1_to_1st_test() ->
    Res = ordinal_numbers:to_ordinal(1),
    ?assertEqual("1st", Res).

convert_2_to_2st_test() ->
    Res = ordinal_numbers:to_ordinal(2),
    ?assertEqual("2nd", Res).

convert_3_to_3rd_test() ->
    Res = ordinal_numbers:to_ordinal(3),
    ?assertEqual("3rd", Res).

convert_4_to_4th_test() ->
    Res = ordinal_numbers:to_ordinal(4),
    ?assertEqual("4th", Res).

