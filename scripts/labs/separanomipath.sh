#!/bin/bash

SPACED=$(sed 's/\://g' <<< "$PATH" | sed 's/[\/]/ /g')
for name in $SPACED; do
	echo $name
done
