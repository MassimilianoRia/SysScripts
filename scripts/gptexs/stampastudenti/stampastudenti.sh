#!/bin/bash
#
# Nella directory corrente ci sono due file:
#   - prova1.txt
#   - prova2.txt
#
# Ogni riga di ciascun file è fatta così (separatore: spazi o tab):
#   Nome Cognome Matricola Voto
# 
# 1) Devi stampare SOLO gli studenti che:
#    - compaiono in prova2.txt con voto < 18
#    - NON compaiono in prova1.txt (match per Matricola, che è univoca)
#
# 2) Output: una riga per studente nel formato:
#    Matricola Nome Cognome Voto
#
# 3) Le righe di output devono essere ordinate per Cognome crescente;
#    a parità di Cognome, ordina per Matricola crescente.
#
# 4) Il voto può essere "30L" (che NON è < 18 ovviamente). Tutti gli altri voti sono numeri.#

: > temp.txt
while read -r nome cognome matricola voto; do
	if [[ "$voto" != "30L" ]] && (( voto < 18 )); then
		presente=0
		while read -r nome2 cognome2 matricola2 voto2; do
			if (( matricola == matricola2 )); then
				presente=1
				break
			fi
		done < "prova1.txt"
		if (( presente == 0 )); then
			echo "${matricola} ${nome} ${cognome} ${voto}" >> "temp.txt"
		fi
	fi
done < "prova2.txt"
sort -k3,3 -k1,1 temp.txt 
rm -f temp.txt

