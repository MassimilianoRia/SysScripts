#!/bin/bash

if (( $# != 1 )) ; then "serve almeno un argomento"; exit 1; fi

cat "$1"

# -i in-place trasforma il file
# p stampa ciascuna riga nel file stesso
# in pratica la duplica

sed -i 'p' "$1"

cat "$1"

