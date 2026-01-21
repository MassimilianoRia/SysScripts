#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

RIGHE='La civetta mattutina casca in piedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
'
# uso tr per eliminare tutti i caratteri che non siano delle c
# quelli che restano li stampo uno per riga
# e infine con wc conto le righe

COUNT=$( echo -e ${RIGHE} | tr -cd  'c' | wc -c )
echo "trovati $COUNT caratteri c"

