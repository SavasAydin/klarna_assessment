-module(credit_card).
-export([maskify/1]).

maskify("")  ->
    "";
maskify(CreditCard) when length(CreditCard) < 6 ->
    CreditCard.
