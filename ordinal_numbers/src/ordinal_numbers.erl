-module(ordinal_numbers).
-export([numberToOrdinal/1]).

numberToOrdinal(0) ->
    0;
numberToOrdinal(N) ->
    Suffix = get_suffix(N),
    integer_to_list(N) ++ Suffix.

get_suffix(N) when N rem 10 == 1 andalso N /= 11 ->
    "st";
get_suffix(N) when N rem 10 == 2 andalso N /= 12 ->
    "nd";
get_suffix(N) when N rem 10 == 3 andalso N /= 13 ->
    "rd";
get_suffix(_) ->
    "th".
