#!/bin/bash

PS_OUTPUT=`ps -elf | grep mpv | grep -v grep | awk '{print $4}'`
#echo $PS_OUTPUT #PID

#Two methods for obtaining information
#1) USING AWK
#TITLE=$(ps ax|egrep "$PS_OUTPUT" | awk -nF'--no' '{print $1}' | awk -nF'--title ' '{print $2}')

#2) USING BASH String OPerations
TITLE=$(ps ax|egrep "$PS_OUTPUT")

#CHOP the beggining
TITLE=${TITLE##*--title}
#CHOP the END
TITLE=${TITLE%%--*}

#If Nothing is playing
#CHOP from mpris directoty
TITLE=${TITLE#*/systemd}
TITLE=${TITLE%/*}
TITLE=${TITLE##*/bin}
if [ "$TITLE" == "" ]; then
#   ^        ^  ^  ^   Don't forget Spaces 
	TITLE=" Why So Serious? "
fi
echo "$TITLE" 
