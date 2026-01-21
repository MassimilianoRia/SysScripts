#!/bin/bash
#
# Scrivere uno script bash che, dato il file votiok.txt presente
# nella directory corrente e contenente righe del tipo matricola voto,
# estragga i voti, calcoli quante volte ciascun voto compare e stampi
# la distribuzione dei voti nel formato voto occorrenze.
# L’output deve essere ordinato per voto in ordine crescente e deve
# gestire correttamente anche il voto 30L.

while read -r mat voto; do
	echo "$voto"
done < "votiok.txt" | sort -n | uniq -c

