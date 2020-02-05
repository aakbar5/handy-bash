#!/bin/bash

#
# Iterate multiple arrays using single loop
#

# Declare an array variable
declare -a list1=(
               "list1-entry1"
               "list1-entry2"
               "list1-entry3"
               "list1-entry4"
               "list1-entry5"
                )

declare -a list2=(
               "list2-entry1"
               "list2-entry2"
               "list2-entry3"
               "list2-entry4"
               "list2-entry5"
               "list2-entry6"
                )

# Get length of the arrays
list1_count=${#list1[@]}
list2_count=${#list2[@]}

echo "List1 count: " ${list1_count}
echo "List2 count: " ${list2_count}

# Find max number to run iteration loop
max=$(( $list1_count > $list2_count ? $list1_count : $list2_count ))
echo "Loop will Iterate till: ${max}"

# Iterate through the arrays (zero index based arrays)
for ((i=0; i < ${max}; ++i)); do

    msg="Index # ${i}: "

    if [ $i -lt ${list1_count} ]
    then
        msg="$msg ${list1[i]}"
    fi

    if [ $i -lt ${list2_count} ]
    then
        msg="$msg ${list2[i]}"
    fi

    echo ${msg}

done
