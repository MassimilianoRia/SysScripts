#!/bin/bash
#
# Scrivere uno script bash che accetti esattamente due argomenti: file e N (con N >= 1).
# Il file contiene righe di testo qualsiasi.
# Lo script deve stampare su stdout solo le righe che hanno **almeno N parole**,
# ma di ciascuna riga deve stampare **solo le ultime N parole**, nello stesso ordine.
# Le parole sono separate da spazi o tab.
# L’ordine delle righe deve essere preservato.

if (( $# != 2 )); then echo "Passare esattamente due argomenti"; exit 1; fi
if (( $2 < 1 )); then echo "Richiesto N >= 1"; exit 1; else N="$2"; fi
if [[ ! -r "$1" ]]; then echo "Errore lettura file: $1"; exit 1; fi

while read -r -a riga; do
	(( nparole=${#riga[@]} ))
	if (( nparole >= N )); then
		partenza=$(( nparole - N ))
		for ((i=partenza;i<nparole;i++)); do
			echo -n "${riga[i]} "
		done
		echo ""
	fi
done < "$1"
