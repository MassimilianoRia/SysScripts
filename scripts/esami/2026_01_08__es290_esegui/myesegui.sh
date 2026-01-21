#!/bin/bash
#
# Scrivere uno script bash che riceva come unico argomento una stringa
# contenente uno o più comandi shell separati da punto e virgola e ne
# esegua il contenuto come se fosse uno script.
# Lo script deve verificare che venga passato esattamente un argomento
# e, in caso contrario, terminare con un messaggio di errore.

if (( $# != 1 )); then echo "Richiesto un solo argomento"; exit 1; fi

COMANDI=$(tr ';' '\n' <<< "$1")
: > temp.sh
while read -r comando; do
	printf '%s\n' "$comando" >> temp.sh
done <<< "$COMANDI"
source ./temp.sh
rm temp.sh
