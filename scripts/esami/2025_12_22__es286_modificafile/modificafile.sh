#!/bin/bash

if (( $# != 1 )) ; then "serve almeno un argomento"; exit 0; fi
if [[ ! -e $1 ]] ; then "il file $1 non esiste"; exit 0; fi
if [[ ! -f $1 ]] ; then "il file $1 non e\' file normale"; exit 0; fi
if [[ ! -r $1 ]] ; then "il file $1 non e\' leggibile"; exit 0; fi
if [[ ! -w $1 ]] ; then "il file $1 non e\' scrivibile"; exit 0; fi

# metto il file in output
cat $1

# copio il contenuto del file in una variabile
CONTENUTO=$(cat $1)

# apro il file in sovrascrittura
exec {FD}>$1
if (( $? != 0 )) ; then 
  echo "errore in apertura file $1 Termino"; exit 1 ; 
fi
# leggo una alla volta le righe originarie dalla variabile
while read RIGA ; do
# e poi le scrivo due volte nel file
  echo merda $RIGA
  echo $RIGA 1>&${FD}
  echo $RIGA 1>&${FD}
done <<<${CONTENUTO}
# chiudo il file
1>&${FD}

# metto il file modificato in output
cat $1

