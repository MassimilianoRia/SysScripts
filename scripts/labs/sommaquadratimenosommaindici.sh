#!/bin/bash
SUM=0
INDSUM=0
IND=1
for int in "$@"; do
	((SUM = SUM + (int * int)))
	((INDSUM = INDSUM + IND))
	((IND++))
done
echo "$((SUM - INDSUM))"

