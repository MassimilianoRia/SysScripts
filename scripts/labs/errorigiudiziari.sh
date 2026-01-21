#!/bin/bash

out=""
while IFS= read -r denuncia; do
	read -r nome cognome id reato <<< "$denuncia"
	out="$nome $cognome $reato"
	while IFS= read -r riga; do
		read -r id1 id2 <<< "$riga"
		if (( $id1 == $id )); then
			while IFS= read -r verdetto; do
				read -r id3 descrizione <<< "$verdetto"
				if [[ -n $verdetto ]] && (( $id3 == $id2 )); then
					out+=" $descrizione"
					echo "$out"
					out=""
				fi
			done < verdetti.txt
		fi
	done < processi.txt
done < denunce.txt
