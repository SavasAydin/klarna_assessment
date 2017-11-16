
# Description
Your job is to create a calculator which evaluates expressions given to you in string format.  
The expressions are numbers and operators.  

Go through the expression left to right, keep track of the numbers, and  
when you come to an operator, apply it to the previous two numbers, and  
replace them with the result.

## Examples
```
"3 2 1 - *"          equivalent to 3
"7 4 5 + * 3 - 10 /" equivalent to 6.
```

Note that for simplicity you may assume that there are always spaces between  
numbers and operations, e.g. '1 3 +' expression is valid, but '1 3+' isn't.

Empty expression should evaluate to 0.

It should support float numbers of format 3.5.

If there are no operations in the input expression,  
it should return the last value of the expression.

Valid operations are +, -, *, /.

You may assume that there won't be exceptional situations  
(like applying operators without enough numbers or division by zero).

# Build
    $ rebar3 compile

# Test
    $ rebar3 eunit
