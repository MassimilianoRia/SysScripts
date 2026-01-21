#!/bin/bash

# Lo script prende come argomenti i percorsi di due file f1 e f2.
# Ciascuno dei due file contiene delle righe di testo.
# Ciascuna riga e' formata da 3 o 4 o 5 parole,
# separate da spazi o tabulazioni.
# Lo script apre i due file poi ripete queste operazioni:
# 1) legge una riga da ciascuno dei due file,
#    2) se entrambe le righe lette hanno almeno 4 parole
#      allora lo script stampa a video 8 parole,
#      cioe' le prime quattro parole di una riga
#      e le prime quattro parole dell'altra riga,
#      ma le stampa alternate. Ad esempio, se 
#      una riga contiene a1 a2 a3 a4 a5 e l'altra riga
#      contiene b1 b2 b3 b4, allora lo scoript
#      stampa a video a1 b1 a2 b2 a3 b3 a4 b4 
#      Poi si leggono le due righe successive
#      ricominciando al punto 1), e cosi' via.
#    3) Se invece una delle due righe ha meno di 4 parole
#      allora lo script termina.

if (( $# != 2 )); then
	echo "Uso: $0 file1.txt file2.txt"
	exit 1
fi

exec 3<$1 || { echo "Impossibile aprire $1"; exit 1; }
exec 4<$2 || { echo "Impossibile aprire $2"; exit 1; }

while 
	read -r -u 3 a1 a2 a3 a4 a5 &&
	read -r -u 4 b1 b2 b3 b4 b5 &&
	[[ -n "${a4}" && -n "${b4}" ]]
do
	echo "$a1 $b1 $a2 $b2 $a3 $b3 $a4 $b4"
done

exec 3<&-
exec 4<&-
