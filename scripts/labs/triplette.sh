#!/bin/bash

DIRFILES=`ls *`
for name1 in $DIRFILES; do
	for name2 in $DIRFILES;do
		for name3 in $DIRFILES; do
			echo "($name1;$name2;$name3)"
		done
	done
done
