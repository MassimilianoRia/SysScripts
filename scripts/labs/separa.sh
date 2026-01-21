#!/bin/bash
OLDIFS=$IFS
IFS=:
for p in $PATH; do
	printf 'percorso: %s, n.caratteri: %d\n' "$p" "${#p}"
done
IFS=$OLDIFS
