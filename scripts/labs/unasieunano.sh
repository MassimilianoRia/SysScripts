#!/bin/bash
counter=0
while read -u 0 riga; do
	(( counter % 2 == 0)) && echo "$riga"
	(( counter++ ))
done
