#!/bin/bash
#
# Lo script riceve due argomenti: un file di testo e un intero N (N >= 1).
# Dal file devi estrarre tutte le parole (sequenze di lettere).
#
# Devi stampare solo le parole:
# - di lunghezza >= 3
# - che compaiono almeno N volte nel file
#
# L’analisi è case-insensitive.
# L’output deve essere nel formato:
#   parola:conteggio
#
# Le righe vanno ordinate per conteggio decrescente e,
# a parità di conteggio, in ordine alfabetico.
#
# Vincoli:
# - non usare awk né sed
# - usare grep -o e wc

if (( $# != 2 )); then echo "Passare esattamente due argomenti"; exit 1; fi
if (( $2 < 1 )); then echo "Richiesto N >= 1"; exit 1; fi
if [[ ! -r "$1" ]]; then echo "Errore lettura file"; exit 1; fi

grep -oE '[[:alpha:]]+' "$1" |
tr '[:upper:]' '[:lower:]' |
grep '...' |
sort | uniq -c |
while read -r cnt wrd; do
	(( cnt >= $2 )) && echo "${wrd}:${cnt}"
done |
sort -t ':' -k2,2nr -k1,1
