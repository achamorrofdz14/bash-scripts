#!/bin/bash

# Author: Adrián Chamorro
# Created: 18/11/2024
# Last Modified: 18/11/2024

# Description:
# Remove all files in a specified folder that have not been modified within a given number of days

# Usage: ./cruft_remover.sh

read -r -p "Which folder you want to remove \"cruft\" from? " folder
read -r -p "How many days files should be unmodified for to be considered? " days

readarray -t files < <(find "$folder" -maxdepth 1 -type f -mtime "+$days")

for file in "${files[@]}"; do
	rm -i "$file"
done
