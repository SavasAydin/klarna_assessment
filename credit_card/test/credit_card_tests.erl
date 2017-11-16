-module(credit_card_tests).
-include_lib("eunit/include/eunit.hrl").

should_not_mask_empty_credit_cards_test() ->
    CreditCard = "",
    Res = credit_card:maskify(CreditCard),
    ?assertEqual("", Res).

should_not_mask_numbers_of_short_credit_cards_test() ->
    CreditCard = "12345",
    Res = credit_card:maskify(CreditCard),
    ?assertEqual(CreditCard, Res).

should_mask_numbers_of_standard_credit_cards_test() ->
    CreditCard = "4556364607935616",
    Res = credit_card:maskify(CreditCard),
    ?assertEqual("4###########5616", Res).

should_mask_numbers_of_unusual_credit_cards_test() ->
    CreditCard = "64607935616",
    Res = credit_card:maskify(CreditCard),
    ?assertEqual("6######5616", Res).
