#!/bin/bash

while read -r A B C others; do
	if [[ -n "$C" ]]; then
		echo "$C"
	fi
done < /usr/include/stdio.h
