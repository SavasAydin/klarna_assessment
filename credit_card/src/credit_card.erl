-module(credit_card).
-export([maskify/1]).

maskify([]) ->
    [];
maskify([N|Numbers]) ->
    SplitAt = length(Numbers) - 4,
    {ToMask, NotToMask} = lists:split(SplitAt, Numbers),
    [N | lists:map(fun mask_digits/1, ToMask)] ++ NotToMask.

mask_digits(N) when N >= $0 andalso N =<$9 ->
    $#;
mask_digits(NotADigit) ->
    NotADigit.
