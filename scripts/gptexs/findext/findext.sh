#!/bin/bash
#
# Scrivere uno script bash che accetti esattamente due argomenti: dir e EXT (senza punto).
# Lo script deve cercare ricorsivamente in dir tutti i file regolari con estensione .EXT.
# Per ciascun file trovato deve stampare una sola riga nel formato:
# <numero_righe> <percorso_file>
# dove <numero_righe> è il numero di righe del file.
# L’output finale deve essere ordinato per <numero_righe> crescente; a parità, per percorso crescente.

if (( $# != 2 )); then echo "Passare esattamente 2 argomenti"; exit 1; fi
if [[ ! -d "$1" ]]; then echo "Directory non valida"; exit 1; fi

: > tempout.txt
find "$1" -type f -name "*.$2" -print | while read -r file; do
	info=$(wc -l "$file")
	printf '%s\n' "$info" >> tempout.txt
done
sort -n -k1,1 -k2,2 tempout.txt
rm -f tempout.txt
