#!/bin/bash

echo "-------------------------------------------------"
echo "Arithmetics"
echo ""

#
# Arithmetic
# Supported operators:
#   - Addition (+, += ),
#   - Subtraction (-, -=),
#   - Division (/, /=)
#   - Multiplication (*, *=)
#   - Exponent (**)
#   - Modulus (%, %=)
x=2
y=10
echo "Addition: ${x} + ${y} = " $(( x + y ))
echo "Addition: ${x} + ${y} = " $((x+y)) # Spaces inside the parentheses does not matter
echo "Addition: ${x} + ${y} = " $(($x+$y)) # $ for inside variable does not matter

echo "Value before +=3 " ${x}
((x += 3))
echo "Value after +=3 " ${x}
echo "Value after another +=3 " $((x += 3))

echo "Value of x = " ${x}


echo "-------------------------------------------------"
echo "let to perform calculation"
echo ""

# However Let allows far more operations
x=2
echo "Value of x= ${x}"

# x++ # Error: x++ command not found
# echo "Value after x++ ${x}"

let x++
echo "Value after x++ ${x}"

x=2
y=3

z=$((x+y))
echo "z="$z

let z=$((x+y))    # same as above line
echo "z=" $z

z="$((x+y))"
echo "z=" $z

let z="$((x+y))" # same as above line
echo "z=" $z

echo "-------------------------------------------------"
echo "backtick & expr to perform calculation"
echo ""

a=2
b=3
c=`expr $a + $b`
echo "value of c= " $c
