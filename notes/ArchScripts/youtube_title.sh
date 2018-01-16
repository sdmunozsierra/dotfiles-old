#!/bin/bash

i3status -c ~/.config/i3/i3statusForMusic.conf |  while :
do
		read line
		title=`~/Data/ArchScripts/mpsyt_info.sh`
		output="$title $line"

		#if ["$title" != ""]; then
			echo "$output" || exit 1
		#fi 
		#echo "$line" || exit 1
done
