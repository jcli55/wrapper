#!/usr/bin/env bash

INDIR=$1

function empty {
	if [[ -d "$INDIR" ]]
	then
		if [[ "$(ls -A $INDIR)" ]]
		then
			rm -r "$INDIR"/*
			echo "Removed all files from $INDIR"
			return 1
		else
			echo "This directory is empty."
			return 1
		fi
	else
		echo "This is not a directory."	
		return 1
	fi
}

empty
