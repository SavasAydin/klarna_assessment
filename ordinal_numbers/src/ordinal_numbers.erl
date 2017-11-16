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
to_ordinal(4) ->
    "4th".
