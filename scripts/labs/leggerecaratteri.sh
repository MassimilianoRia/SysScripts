#!/bin/bash
counter=0
exec 3< /usr/include/stdio.h
while read -u 3 -r -n 1 c; do
	((counter++))
done
echo $counter
