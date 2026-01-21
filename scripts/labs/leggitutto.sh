#!/bin/bash

while read riga || [[ -n $riga ]]; do
	echo "$riga"
done < miofileNoNL.txt
