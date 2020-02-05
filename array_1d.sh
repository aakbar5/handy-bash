#!/bin/bash

#
# Iterate a 1d array
#

# Declare an array variable
declare -a list=(
               "entry1"
               "entry2"
               "entry3"
               "entry4"
               "entry5"
               )

# Iterate through the array (zero index based array)
for ((i=0; i < ${#list[@]}; ++i)); do
     echo "Index # $i: ${list[i]}"
done
