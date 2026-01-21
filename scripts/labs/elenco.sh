#!/bin/bash

LungNomiDir=0
FilesCounter=0
for name in *; do
	if [[ -d "$name" ]]; then
		(( LungNomiDir += ${#name} ))
	else
		(( FilesCounter++ ))
	fi
done

echo "$LungNomiDir"; echo "$FilesCounter"
