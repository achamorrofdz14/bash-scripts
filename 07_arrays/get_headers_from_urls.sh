#!/bin/bash

readarray -t urls < urls.txt

for url in ${urls[@]}; do
	filename=$(echo "$url" | cut -d "." -f 2).txt
	curl -I "$url" > $filename
done

