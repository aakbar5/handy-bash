#!/bin/bash

echo "-------------------------------------------------"
echo "echo command"
echo ""

# Print a message
echo "Hello world!"

# Print a message
# but \t will not be interpret
echo "Hello\tworld!"

# Print a message and interpret backslash escapes
echo -e "Hello\tworld!"
