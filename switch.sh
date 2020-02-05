#!/bin/bash

echo "-------------------------------------------------"
echo "switch case"
echo ""

x=7
case $x in 
3)
    echo "x is having value 3"
    ;;
4 | 5 | 6 | 7)
    echo "x is having value b/w 4..7"
    ;;
8)
    echo "x is having value 8"
    ;;
*)
    echo "x is having unknown value"
    ;;
esac
