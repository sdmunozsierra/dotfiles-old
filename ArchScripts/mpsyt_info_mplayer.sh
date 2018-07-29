#!/bin/bash

PS_OUTPUT=`ps -elf | grep mplayer | grep -v grep | awk '{print $4}'`

#2) USING BASH String OPerations
TITLE=$(ps ax|egrep "$PS_OUTPUT")

#CHOP the beggining
TITLE=${TITLE##*-title}
#CHOP the END
TITLE=${TITLE%%-noquiet*}

#If Nothing is playing
#CHOP from mpris directoty
#TITLE=${TITLE#*/systemd}
TITLE=${TITLE%/*}
TITLE=${TITLE##*/bash}
TITLE=${TITLE##*./*}
#TITLE=${TITLE##*/bin}
if [ "$TITLE" == "" ]; then
#   ^        ^  ^  ^   Don't forget Spaces 
	TITLE=""
fi
echo "$TITLE" 
