#!/bin/bash
inp="$1"
out=""
for (( i=${#inp}-1; i>=0; i-- )); do
	out+="${inp:i:1}"
done
echo $out
