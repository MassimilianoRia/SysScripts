#!/bin/bash
#
# Scrivere uno script bash che, data la directory dir1, 
# selezioni tutti i file il cui nome contiene almeno una
# lettera a o f, legga da ciascuno la terza riga (assunta numerica)
# e ne calcoli la somma totale.
# Lo script deve stampare a video il valore della somma finale.

SUM=0
for file in ./dir1/*[af]*; do
		NUM=$(head -n 3 "$file" | tail -n 1)
		((SUM+=NUM))
done
echo "${SUM}"
