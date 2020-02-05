#!/bin/bash

echo "-------------------------------------------------"
echo "Variable assignment"
echo ""

# Declare variable having integer value
ivar=10
echo "Simple integer variable: $ivar"
echo "Simple integer variable: ${ivar}"

# Declare variable having character value
cvar='a'
echo "Simple char variable: $cvar"
echo "Simple char variable: ${cvar}"

# Declare variable having string
svar="bash"
echo "Simple string variable: $svar"
echo "Simple string variable: ${svar}"

# Declare an array - zero index based array
iarray=( 10 20 30 40 50 )
echo "Array element # 0: ${iarray[0]}" # For array element, you can't do $iarray[0]
echo "Array element # 1: ${iarray[1]}"
echo "Array element # 2: ${iarray[2]}"
echo "Array element # 3: ${iarray[3]}"
echo "Array element # 4: ${iarray[4]}"

# Array manipulations
echo "Show number of elements in array: " ${#iarray[@]}
echo "Length of first element:          " ${#iarray}
echo "Length of element # 2:            " ${#iarray[2]}
echo "Show all elements:                " ${iarray[@]}
echo "Show ranged elements:             " ${iarray[@]:1:3}

# Modify an array element
iarray[4]=60
echo "Array element # 4 (after modification): ${iarray[4]}"

# Add a new element to array
echo "Array length(Before add): " ${#iarray[@]}

iarray=( ${iarray[@]} 60 )
echo "Array length (After add): " ${#iarray[@]}

# Remove an element
unset iarray[5]
echo "Array length (After remove): " ${#iarray[@]}

# Array slicing
iarr=("${iarray[@]:1:2}")
echo "Array slicing: " ${iarr[@]}
