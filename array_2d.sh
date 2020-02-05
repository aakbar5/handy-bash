#!/bin/bash
set +x

#
# Iterate a 2d array
#

declare -A matrix
matrix[0,0]='00'
matrix[0,1]='01'
matrix[1,0]='10'
matrix[1,1]='11'

num_rows=2
num_columns=2

for ((x=0;x<num_rows;x++)) do
    for ((y=0;y<num_columns;y++)) do
        echo "$x,$y = ${matrix[$x,$y]}"
    done
done
