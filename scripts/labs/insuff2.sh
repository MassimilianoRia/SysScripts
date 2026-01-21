#!/bin/bash

genera_studenti() {
	while read -r nome2 cognome2 mat2 voto2; do
		if (( voto2 < 18 )); then
			FLAG=0
			while read -r nome1 cognome1 mat1 voto1; do
				if (( mat1 == mat2 )); then
					FLAG=1
					break
				fi
			done < "RisultatiProvaPratica1.txt"
			if (( FLAG == 0 )); then
				echo "${mat2} ${nome2} ${cognome2}, voto prova2: ${voto2}"
			fi
		fi
	done < "RisultatiProvaPratica2.txt"	
}

genera_studenti | sort -k3,3
