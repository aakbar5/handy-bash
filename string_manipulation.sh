#!/bin/bash

echo "-------------------------------------------------"
echo "String manipulation"
echo ""

str="string"
echo "String: ${str}"
echo "Length: ${#str}"

#
# String comparison
echo ""
echo "--- String substring ---"
echo ""

str="string"
if [ "${str}" == "string" ]; then
    echo "Both strings are equal"
fi

if [ "${str}" != "String" ]; then
    echo "Both strings are different"
fi

#
# Substring: ${string:position:length}
echo ""
echo "--- String substring ---"
echo ""

str="1234567890"
echo "Input string:            ${str}"
echo "Substring from front:    ${str:6}"
echo "Substring from backward: ${str:(-6)}"
echo "Substring from front:    ${str:6:4}"
echo "Substring from backward: ${str:(-6):1}"
echo "Substring:               ${str::3}"
echo "Substring:               ${str::-3}"


#
# String concatenate
echo ""
echo "--- String concatenation ---"
echo ""

str="string1"
str+=" string2"
str="${str} string3"
echo "${str}"

echo ""
echo "--- Case changing ---"
echo ""
str=bash
echo "To uppercase: ${str} --> ${str^^}"
echo "To uppercase: ${str} --> ${str^}"

str=BASH
echo "To lowercase: ${str} --> ${str,,}"
echo "To lowercase: ${str} --> ${str,}"

str=baSH
echo "To invert case: ${str} --> ${str~~}"
echo "To invert case: ${str} --> ${str~}"

echo ""
echo "--- String substitution ---"
echo ""

# ${PARAMETER/PATTERN/STRING}   replace first occurrence
# ${PARAMETER//PATTERN/STRING}  replace all occurrences
# ${PARAMETER/PATTERN}          remove first occurrence of pattern
# ${PARAMETER//PATTERN}         remove all occurrences of pattern

# Ref: https://wiki.bash-hackers.org/syntax/pattern
str="Bash, hello world! Bash, hello world!"
echo ${str//l/L} # Replace l with L
echo ${str//world} # Remove world

str="test hello world test"
echo ${str/#test/L} # If $substring matches front end of $string, substitute $replacement for $substring.
echo ${str/%test/L} # If $substring matches back end of $string, substitute $replacement for $substring.
echo ${str/#test} # Remove prefix
echo ${str/%test} # Remove suffix
# ${VAR%%suffix}    Remove long suffix
# ${VAR##prefix}    Remove long prefix


echo ""
echo "--- Path manipulation ---"
echo ""

path="/path/to/file.ext"
echo "                  ${path}"
echo "Path + File Name: ${path%.ext}"
echo "Path:             ${path%/*.*}"
echo "File Name + ext:  ${path##*/}"
echo "Extension:        ${path##*.}"
