#!/bin/bash

#set term
term="st -f BitstreamVeraSansMono:size=11:style=Roman:antialias=true"

#first 'complex script'
if [ "$1" != "" ]; then
	echo "Will edit $1"	
	$term vim $1
else
	echo "Please input a file to edit"
fi
