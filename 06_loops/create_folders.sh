#!/bin/bash

if [ -n "$1" ] && [ -e "$1" ]; then
	while read line; do
		mkdir "$line" && echo "Folder $line created!"
	done < "$1"
else
	echo "The path provided doesn't exists."
fi
