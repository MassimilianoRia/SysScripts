#!/bin/bash
#
# Leggo una ad una le matricole (formato EMAIL 'spazio' MATRICOLA), 
# per ciascuna matricola controllo 
# se esiste nella directory files1 un file
# nel cui nome c'e' quella matricola.
# Se esiste lo copio in files2 chiamandolo con la mail corrispondente.

while read -r mail mat; do
	FILES=`ls ./files1`
	for name in $FILES; do
		if [[ $name == *"${mat}"* ]]; then
			touch "./files2/${mail}"
		fi
	done
done < "elenco.txt"
