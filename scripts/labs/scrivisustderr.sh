#!/bin/bash

while read -r riga; do
	read -r parola r <<< "$riga"
	echo "$parola" >&2
	echo evviva
done
