#!/bin/bash
goal="cacc"
counter=0
while :; do
	parola=$(./myparola.sh)
	((counter++))
	[[ "$parola" == "$goal" ]] && break
done
echo "$parola, $counter tentativi"
