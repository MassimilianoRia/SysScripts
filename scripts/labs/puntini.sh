#!/bin/bash
SLEEPING=$1
for ((i=0;i<$SLEEPING;i++)); do
	sleep 1
	printf \.$$
done
echo "" #solo per mandare a capo la prossima riga di comando
