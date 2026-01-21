#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

RIGA="La civetta mattutina casca in piedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
"

echo -n -e ${RIGA} | sed -r "s/[^c]//g" | wc -m

