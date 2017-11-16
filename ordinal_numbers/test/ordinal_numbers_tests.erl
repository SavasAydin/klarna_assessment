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

convert_15_to_15th_test() ->
    Res = ordinal_numbers:to_ordinal(15),
    ?assertEqual("15th", Res).

convert_21_to_21st_test() ->
    Res = ordinal_numbers:to_ordinal(21),
    ?assertEqual("21st", Res).

convert_32_to_32nd_test() ->
    Res = ordinal_numbers:to_ordinal(32),
    ?assertEqual("32nd", Res).

convert_43_to_43rd_test() ->
    Res = ordinal_numbers:to_ordinal(43),
    ?assertEqual("43rd", Res).

convert_100_to_100th_test() ->
    Res = ordinal_numbers:to_ordinal(100),
    ?assertEqual("100th", Res).
