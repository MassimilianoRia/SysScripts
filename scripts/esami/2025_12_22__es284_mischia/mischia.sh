#!/bin/bash

# lo script prende come argomenti i percorsi di due file f1 e f2.
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
#
# Ad esempio, se il file f1,txt contiene queste righe
#    alfa beta gamma teta
#    x1 x2 x3 x4 x5
#    1 2 3
#    lancia fulvia stratos delta
# ed il file f2.txt contiene queste righe
#    b1 b2 b3 b4
#    orca squalo trota luccio piranha
#    ape mosca blatta porco cane
#    z1 z2 z3 z4 z5
# allora l'output deve essere:
#    alfa b1 beta b2 gamma b3 teta b4
#    x1 orca x2 squalo x3 trota x4 luccio

if (( $# != 2 )) ; then 
	echo "servono due argomenti, file1 e file2"; 
	exit 1
fi
exec {FD1}<$1
if (( $? != 0 )) then echo "impossibile apertura $1 errore $?" ; exit 1 ; fi
exec {FD2}<$2
if (( $? != 0 )) then echo "impossibile apertura $1 errore $?" ; exit 1 ; fi

while read -u ${FD1} a1 a2 a3 a4 altroa && [[ -n $a4 ]] &&
      read -u ${FD2} b1 b2 b3 b4 altrob && [[ -n $b4 ]] ; do
	echo "$a1 $b1 $a2 $b2 $a3 $b3 $a4 $b4"
done

exec {FD1}>&-
exec {FD2}>&-


