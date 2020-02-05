#!/bin/bash

echo ""
echo "-------------------------------------------------"
echo "while loop"
echo ""

a=1
while [[ $a -le 5 ]]; do
    echo "While loop idx # $a"
    let ++a
done


echo ""
echo "-------------------------------------------------"
echo "For loop with defined range and default increment"
echo ""

for i in {1..10}; do
    echo "loop # $i with step @ 1"
done


echo ""
echo "-------------------------------------------------"
echo "For loop with defined range and custom increment"
echo ""

for i in {1..10..2}; do
    echo "loop # $i with step @ 2"
done


echo ""
echo "-------------------------------------------------"
echo "For loop c-style"
echo ""

for ((i = 1 ; i <= 10 ; i++)); do
  echo "c-style loop # $i with step @ 1"
done


echo ""
echo "-------------------------------------------------"
echo "For loop in c-style"
echo ""

for ((i = 1 ; i <= 10 ; i += 2)); do
  echo "c-style loop # $i with step @ 2"
done

echo ""
echo "-------------------------------------------------"
echo "For loop with seq expression"
echo ""

for i in `seq 1 5`; do
  echo "loop with seq expr # $i"
done


echo ""
echo "-------------------------------------------------"
echo "For loop to iterate over word list"
echo ""

words="word1 word2 word3"
for word in $words; do
  echo "$word"
done


echo ""
echo "-------------------------------------------------"
echo "For loop to iterate over word list"
echo ""
words="
word1
word2  word3
word4           word5
"
for word in $words; do
  echo "$word"
done
