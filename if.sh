#!/bin/bash

echo "-------------------------------------------------"
echo "if condition"
echo ""

# Supported comparison:  <, <=, >, >=, =, ==, !=

x=2
y=3

# Need a space after if, [ and before ]
if [ $x == 1 ]; then
  echo "Value of x is 1"
elif [ $x == 2 ]; then
  echo "Value of x is 2"
else
  echo "Value of x is not valid"
fi

if [ $x == 2 ] && [ $y == 3 ]; then
  echo "Value of x is 2 and y is 3"
else
  echo "Values of x and y are not valid"
fi

# Else statement will be executed as if evaluation will be false
# if [ $x < $y ]; then
#   echo "Value of x is less than y"
# else
#   echo "Value of x is greater than y"
# fi

# if [ "$x" < "$y" ]; then
#   echo "Value of x is less than y"
# else
#   echo "Value of x is greater than y"
# fi

# To solve this problem, different solutions are available:

# Solution # 1
if [ $x \< $y ]; then
  echo "Value of x is less than y"
else
  echo "Value of x is greater than y"
fi

# Solution # 2
if [ "$x" \< "$y" ]; then
  echo "Value of x is less than y"
else
  echo "Value of x is greater than y"
fi

# Solution # 3
if [ $x -le $y ]; then
  echo "Value of x is less than y"
else
  echo "Value of x is greater than y"
fi

# Solution # 4
if [ "$x" -le "$y" ]; then
  echo "Value of x is less than y"
else
  echo "Value of x is greater than y"
fi

# Solution # 5
if (( $x < $y )); then
  echo "Value of x is less than y"
else
  echo "Value of x is greater than y"
fi


echo "-------------------------------------------------"
echo "Single line if conditions"
echo ""

str="bash"
[[ -z $str ]] && echo "string is empty" || echo "string is not empty"

str=""
[[ -z $str ]] && echo "string is empty" || echo "string is not empty"

str="bash"
[[ -n $str ]] && echo "string is not empty" || echo "string is empty"

str=""
[[ -n $str ]] && echo "string is not empty" || echo "string is empty"

[[ "bash" == "bash" ]] && echo "String are equal" || echo "String are not equal"
[[ "bash" != "bash" ]] && echo "String not equal" || echo "String are equal"

[[ "bash" == "bash" ]] && echo "String are equal"
[[ "bash" != "bash" ]] || echo "String are equal"

[[ 2 -eq 2 ]] && echo "Both numbers are equal"
[[ 2 -ne 5 ]] && echo "Both numbers are different"
[[ 2 -lt 6 ]] && echo "First number is less than second number"
[[ 2 -le 7 ]] && echo "First number is less than/equal second number"
[[ 9 -gt 8 ]] && echo "First number is greater than second number"
[[ 9 -ge 9 ]] && echo "First number is greater than/equal second number"
