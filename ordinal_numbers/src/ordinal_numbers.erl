-module(ordinal_numbers).
-export([to_ordinal/1]).

to_ordinal(0) ->
    "0";
to_ordinal(N) ->
    Suffix = get_suffix(N),
    integer_to_list(N) ++ Suffix.

get_suffix(N) ->
    Ending = N rem 10,
    Suffixes = [{1, "st"}, {2, "nd"}, {3, "rd"}],
    proplists:get_value(Ending, Suffixes, "th").
