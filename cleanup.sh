#!/bin/bash
oldline=""
find ./ -type f -name "*.mp3" | while read line; do
	curline=${line::-4}
	
	
	if [[ $oldline =~ $curline ]]
	then
		echo "$oldline"
		rm "$oldline.mp3"
	fi
	
	oldline=$curline
	
done
