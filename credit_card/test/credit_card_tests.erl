-module(credit_card_tests).
-include_lib("eunit/include/eunit.hrl").

should_not_mask_if_no_numbers_given_test() ->
    Res = credit_card:maskify(""),
    ?assertEqual("", Res).

should_not_mask_if_number_is_five_digits_test() ->
    Res = credit_card:maskify("12345"),
    ?assertEqual("12345", Res).

should_mask_all_but_first_and_last_four_digits_test() ->
    Res = credit_card:maskify("4556364607935616"),
    ?assertEqual("4###########5616", Res).

should_mask_all_but_hyphen_first_and_last_four_digits_test() ->
    Res = credit_card:maskify("4556-3646-0793-5616"),
    ?assertEqual("4###-####-####-5616", Res).

should_not_mask_if_numbers_are_not_integer_test() ->
    Res = credit_card:maskify("Skippy"),
    ?assertEqual("Skippy", Res).
