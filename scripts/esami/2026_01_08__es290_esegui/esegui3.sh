#!/bin/bash

if (( $# != 1 )) ; then echo "serve esattamente un argomento"; exit 1 ; fi

# Soluzione non vista a lezione, la metto solo per completezza.
# visto che dopo l'espansione delle variabili non viene piu' fatto lo split delle parole
# allora chiedo di rivalutare dall'inizio la riga di comando.

eval "$1"

