#!/usr/bin/env bash

# Removes all files and directories in a given directory
# Argument: need to pass in the target directory
# Example: ./empty.sh [directory]
#
# Author: Jean.Li@bcm.edu
# Date created: 6/13/2023

# Pass in the target directory and save it as INDIR
INDIR=$1

function empty {
	# Check to see if the INDIR is a directory
	if [[ -d "$INDIR" ]]
	then
		# Check to see if the INDIR is not empty
		if [[ "$(ls -A $INDIR)" ]]
		then
			# Remove the files/directories inside INDIR
			rm -r "$INDIR"/*
			echo "Removed all files from $INDIR"
			return 1
		else
			echo "This directory is already empty."
			return 1
		fi
	else
		echo "This is not a directory."	
		return 1
	fi
}

# Make sure user wants to empty INDIR
echo "Are you sure you want to empty $INDIR? (y/n)"
read INPUT

if [[ $INPUT == y ]]
then
	empty
else
	echo "$INDIR was not emptied"
fi
