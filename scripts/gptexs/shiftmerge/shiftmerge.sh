#!/bin/bash
#
# Scrivere uno script bash che accetti esattamente tre argomenti: N, file1 e file2 (con N >= 1).
# Lo script deve leggere i due file in parallelo, una riga per volta da ciascun file.
# Per ogni coppia di righe, deve considerare solo le prime N parole di ciascuna riga.
# Sulla riga di file1 la prima parola deve essere spostata in fondo, mantenendo l’ordine delle altre.
# Sulla riga di file2 l’ultima parola deve essere spostata all’inizio, mantenendo l’ordine delle altre.
# Deve quindi stampare una riga nel formato: <risultato_file1> | <risultato_file2>.
# L’esecuzione termina quando uno dei due file raggiunge EOF oppure quando la parola esatta STOP
# compare tra le prime N parole di una delle due righe.
# Lo script deve gestire correttamente parole con caratteri speciali e righe senza newline finale.

if (( $# != 3 )); then echo "Uso: $0 N (>= 1) f1.txt f2.txt"; exit 1; fi
if (( $1 < 1 )); then echo "Richiesto N >= 1"; exit 1; fi
if [[ ! -r $2 || ! -r $3 ]]; then echo "Errore lettura files"; exit 1; fi

exec 3<"$2"
exec 4<"$3"
N=$1

while
	read -r -u 3 -a parole1 &&
	read -r -u 4 -a parole2
do

	out1=""
	out2=""

	for ((i=1;i<N;i++)); do
		out1+=" ${parole1[i]}"
	done
	out1+=" ${parole1[0]}"
	
	newN=$(( N - 1 ))
	out2+=" ${parole2[newN]}"
	for ((i=0;i<newN;i++)); do
		out2+=" ${parole2[i]}"
	done
	
	printf '%s | %s\n' "$out1" "$out2"
	
done

exec 3<&-
exec 4<&-
