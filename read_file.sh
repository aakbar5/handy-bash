#!/bin/bash

#
# Read a file line by line
#

FILE='/localhome/aakbar/Desktop/variables.mk'
while read LINE; do
    echo $LINE
done < $FILE
