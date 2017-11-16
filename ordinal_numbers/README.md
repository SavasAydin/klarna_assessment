# Description
Finish the function numberToOrdinal, which should take a number and  
return it as a string with the correct ordinal indicator suffix (in English).

That is:  
```
numberToOrdinal(1) ==> '1st'  
numberToOrdinal(2) ==> '2nd'  
numberToOrdinal(3) ==> '3rd'  
numberToOrdinal(4) ==> '4th'  
```

... and so on

For the purposes of this challenge, you may assume that  
the function will always be passed a non-negative integer.  
If the function is given 0 as an argument, it should return '0' (as a string).

To help you get started, here is an excerpt from Wikipedia's page on Ordinal Indicators:  
```
st is used with numbers ending in 1 (e.g. 1st, pronounced first)  
nd is used with numbers ending in 2 (e.g. 92nd, pronounced ninety-second)  
rd is used with numbers ending in 3 (e.g. 33rd, pronounced thirty-third)  
th is used for all other numbers (e.g. 9th, pronounced ninth).  
```

# Build
    $ rebar3 compile

# Test
    $ rebar3 eunit