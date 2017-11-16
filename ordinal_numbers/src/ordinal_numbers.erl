-module(ordinal_numbers).
-export([to_ordinal/1]).

to_ordinal(0) ->
    "0";
to_ordinal(1) ->
    "1st";
to_ordinal(2) ->
    "2nd".
