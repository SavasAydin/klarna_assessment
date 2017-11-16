-module(credit_card).
-export([maskify/1]).

maskify(CreditCard) when length(CreditCard) < 6 ->
    CreditCard;
maskify([H|CreditCard]) ->
    SplitAt = length(CreditCard) - 4,
    {ToMask, NotToMask} = lists:split(SplitAt, CreditCard),
    [H | [ mask_digits(X) || X <- ToMask ] ++ NotToMask].

mask_digits(D) when D >= $0 andalso D =< $9 ->
    $#;
mask_digits(NonDigit) ->
    NonDigit.
