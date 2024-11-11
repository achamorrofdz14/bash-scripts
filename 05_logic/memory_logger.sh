#!/bin/bash

if [[ -d "$HOME/performance" ]]; then
	echo "$HOME/performance exists !"
else
	mkdir "$HOME/performance" && echo "performance folder created!"
fi

free >> "$HOME/performance/memory.log"
