#!/bin/bash

if [ 2 -gt 3 ] || [ 1 -eq 1 ]; then
	echo test passed
elif [ 1 -eq 1 ]; then
	echo  test2 passed
else
	echo test failed
fi
