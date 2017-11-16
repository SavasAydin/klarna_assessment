-module(ordinal_numbers).
-export([to_ordinal/1]).

to_ordinal(0) ->
    "0";
to_ordinal(1) ->
    "1st";
to_ordinal(2) ->
    "2nd";
to_ordinal(3) ->
    "3rd";
to_ordinal(N) when N < 10 ->
    integer_to_list(N) ++ "th";
to_ordinal(N) ->
    Quotient = N div 10,
    integer_to_list(Quotient) ++ to_ordinal(N - Quotient * 10).
