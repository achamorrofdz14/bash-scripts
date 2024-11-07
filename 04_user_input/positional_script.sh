#!/bin/bash
echo "My name is $1"
echo "My favourite city is $2"
echo "I'm $3 years old"

# Wrong
echo "Paramter in 10th position: $10"

# Good
echo "Paramter in 10th position: ${10}"

# Number of parameters
echo "Got $# parameters in $0 file"

# All parameters at once
echo "$@"
IFS=,
echo "$*"
