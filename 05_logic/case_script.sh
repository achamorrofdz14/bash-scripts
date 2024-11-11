#!/bin/bash

PS3="Select a city from the list: "

select city in Barcelona Madrid Paris Lisboa; do
echo
case "$city" in
	"Barcelona" | "Madrid") country="Spain";;
	"Paris") country="France";;
	"Lisboa") country="Portugal";;
	*) echo "Country not found";;
esac

echo "$city is in $country!"

break
done
