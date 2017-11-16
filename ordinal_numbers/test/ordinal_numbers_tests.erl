-module(ordinal_numbers_tests).
-include_lib("eunit/include/eunit.hrl").

convert_0_to_0_test() ->
    Res = ordinal_numbers:to_ordinal(0),
    ?assertEqual("0", Res).
