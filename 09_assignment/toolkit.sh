#!/bin/bash

# Author: Adrián Chamorro
# Created: 18/11/2024
# Modified: 18/11/2024

# Description
# Menu to select wchic utility should be run

# Usage: ./toolkit.sh


PS3="Select the script you want to execute: "

select script in "Folder organiser" "Cruft Remover"; do
	case "$script" in
		"Folder organiser") ./folder_organiser.sh ;;
		"Cruft Remover") ./cruft_remover.sh ;;
		\?) ;;
	esac
	break
done
