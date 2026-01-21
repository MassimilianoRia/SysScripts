#!/bin/bash
#
# Scrivere uno script bash che accetti esattamente due argomenti: K e file (con K >= 1).
# Il file contiene righe di testo qualsiasi (anche con spazi e tab).
# Per ogni riga, lo script deve estrarre la prima “parola” (sequenza massimale di caratteri [A-Za-z0-9_])
# e contare quante volte ciascuna prima parola compare nel file (ignorando righe che non iniziano con una parola valida).
# Al termine deve stampare su stdout le K prime parole più frequenti, una per riga, nel formato:
# <conteggio> <parola>
# Ordinamento: conteggio decrescente; a parità, parola crescente (lessicografico).
# Se le parole distinte sono meno di K, stampa tutte.

if (( $# != 2 )); then echo "Passare esattamente due argomenti"; exit 1; fi
if (( $1 < 1 )); then echo "Richiesto N >= 1"; exit 1; fi
if [[ ! -r $2 ]]; then echo "Errore lettura file: $2"; exit 1; fi

: > tempvalide.txt
while read -r r; do
	if [[ $r =~ ^[A-Za-z0-9_]+ ]]; then
		printf '%s\n' "${r}" >> tempvalide.txt
	fi
done < "$2"

: > tempcontatore.txt
while read -r parola r; do
	counter=0
	while read -r -a riga; do
		n=${#riga[@]}
		for ((i=0;i<n;i++)); do
			if [[ "${parola}" == "${riga[i]}" ]]; then
				((counter++))
			fi
		done
	done < "tempvalide.txt"
	printf '%s %s\n' "${counter}" "${parola}" >> tempcontatore.txt
done < "tempvalide.txt"

sort -n -r tempcontatore.txt | head -n "$1"

rm temp*.txt
