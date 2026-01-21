#!/bin/bash
if (( $# != 2 )) ; then
        echo "servono due argomenti, file1 e file2";
        exit 1
fi

#Apro i due file f1.txt e f2.txt associandoli a file descriptor

exec {FD1}<$1
exec {FD2}<$2

while true; do
        #Leggo una riga da FD1 e una da FD2
        read -u ${FD1} RIGA1 || break
        read -u ${FD2} RIGA2 || break

				# set -- prende la riga e la divide in parametri posizionali 
				# (argomenti, che uso dopo come $1, $2 etc
        set -- $RIGA1 

				#Esco se RIGA1 ha meno di 4 argomenti/parole
        if [[ $# -lt 4 ]]; then
                break 
        fi

        A1=$1; A2=$2; A3=$3; A4=$4

        set -- $RIGA2
        if [[ $# -lt 4 ]]; then
                break
        fi

        B1=$1; B2=$2; B3=$3; B4=$4

        #Stampa
        echo "$A1 $B1 $A2 $B2 $A3 $B3 $A4 $B4"
done

#Chiusura dei file aperti
exec {FD1}<&-
exec {FD2}<&-

