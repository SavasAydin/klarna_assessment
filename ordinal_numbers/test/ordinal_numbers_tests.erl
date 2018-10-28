-module(ordinal_numbers_tests).
-include_lib("eunit/include/eunit.hrl").

convert_0_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(0),
    ?assertEqual(0, Res).

convert_1_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(1),
    ?assertEqual("1st", Res).

convert_2_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(2),
    ?assertEqual("2nd", Res).

convert_3_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(3),
    ?assertEqual("3rd", Res).

convert_4_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(4),
    ?assertEqual("4th", Res).

convert_21_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(21),
    ?assertEqual("21st", Res).

convert_32_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(32),
    ?assertEqual("32nd", Res).

convert_43_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(43),
    ?assertEqual("43rd", Res).

convert_99_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(99),
    ?assertEqual("99th", Res).

convert_11_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(11),
    ?assertEqual("11th", Res).

convert_12_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(12),
    ?assertEqual("12th", Res).

convert_13_to_ordinal_number_test() ->
    Res = ordinal_numbers:numberToOrdinal(13),
    ?assertEqual("13th", Res).

