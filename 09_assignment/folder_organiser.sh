#!/bin/bash

# Author: Adrián Chamorro
# Created: 18/11/2024
# Last Modified: 18/11/2024

# Description:
# Given a folder, it moves files into subfolders based on their extensions

# Usage: ./folder_organiser.sh

read -r -p "Wich folder do you want to organise? " folder

while read -r file; do
	case "$file" in
		"" ) echo "You didn't enter nothing!" ;;
		"*.jpg" | "*.jpeg" | "*.png" )
			subfolder=images ;;
		"*.doc" | "*.docx" | "*.txt" | "*.pdf" ) 
			subfolder=documents ;;
		"*.xls" | "*.xlsx" | "*.csv" )
			subfolder=spreadsheets ;;
		"*.sh" )
			subfolder=scripts ;;
		"*.zip" | "*.tar" | "*.tar.gz" | "*.tar.bz2" ) 
			subfolder=archives ;;
		"*.ppt" | "*.pptx" )
			subfolder=presentations ;;
		"*.mp3" )
			subfolder=audio ;;
		"*.mp4" )
			subfolder=video ;;
		* )
			subfolder="." ;;
	esac

	if [ ! -d "$folder/$subfolder" ]; then
		mkdir "$folder/$subfolder"
	fi

	mv "$file" "$folder/$subfolder"

done < <(ls "$folder")
