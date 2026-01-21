#!/bin/bash

while read -r riga; do
	sed 's/[]*?\[]/\\&/g' <<< "$riga"
done
