-module(ordinal_numbers).
-export([to_ordinal/1]).

-define(SUFFIXES, [{1, "st"}, {2, "nd"}, {3, "rd"}]).
-define(DEFAULT_SUFFIX, "th").

to_ordinal(0) ->
    "0";
to_ordinal(N) ->
    Suffix = get_suffix(N),
    integer_to_list(N) ++ Suffix.

get_suffix(N) ->
    Ending = N rem 10,
    proplists:get_value(Ending, ?SUFFIXES, ?DEFAULT_SUFFIX).
