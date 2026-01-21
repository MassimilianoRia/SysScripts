#!/bin/bash

for ((i=0;i<6;i++)); do
	((rnd = RANDOM % 3 + 1))
	./myfiglio.sh $rnd
done
