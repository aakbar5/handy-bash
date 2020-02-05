#!/bin/bash

echo "-------------------------------------------------"
echo "Variable substitution"
echo ""

echo ${var:-20} # Use 20; if var is not set or null
echo ${var} # Var is empty

echo ${var-20} # Use 20; if var is not set or null
echo ${var}  # Var is empty

echo ${var:=20} # Set 20; if var is not set or null
echo ${var}  # Var is empty

echo ${var=30} # Set 30; if var is not set or null
echo ${var}  # Var is empty
