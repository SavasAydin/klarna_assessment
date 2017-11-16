# Description
Usually when you buy something, you're asked whether your credit card number,  
phone number or answer to your most secret question is still correct.  
However, since someone could look over your shoulder, you don't want that shown on your screen.  
Instead, we mask it.

Your task is to write a function maskify,  
which masks all but the first and last four characters with '#'.

Non-digits should never be masked.credit_card_numbers.

## Examples
```
"4556364607935616"    -> "4###########5616"  
"4556-3646-0793-5616" -> "4###-####-####-5616"  
"64607935616"         -> "6######5616"  
"12345"               -> "12345"  
""                    -> ""  
"Skippy"              -> "Skippy"  
```

# Build
    $ rebar3 compile

# Test
    $ rebar3 eunit
