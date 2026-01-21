#!/bin/bash

if (( $# != 1 )); then echo "Un solo intero positivo"; exit 1; fi
if [[ ! $1 =~ ^[0-9]+$ ]]; then echo  "Serve un intero positivo"; exit 1; fi
ARG=$1
if (( ARG > 0 )); then
	for ((i=0;i<ARG;i++)); do
		./discendenti.sh $((ARG-1)) &
	done
	wait
fi
echo "n. figli: $ARG"
exit 0
