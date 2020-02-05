#!/bin/bash

echo "-------------------------------------------------"
echo "Variable validation"
echo ""

a=0
if [ -n "$a" ]; then
  echo "a is set (Using -z)"
else
  echo "a is not set (Using -z)"
fi

# b=0
if [ -z "$b" ]; then
  echo "b is set (Using -z)"
else
  echo "b is not set (Using -z)"
fi

# --------------------------

x=0
if [ -n "$x" ]; then
  echo "x is set (Using -n)"
else
  echo "x is not set (Using -n)"
fi

# y=0
if [ -n "$y" ]; then
  echo "y is set (Using -n)"
else
  echo "y is not set (Using -n)"
fi
