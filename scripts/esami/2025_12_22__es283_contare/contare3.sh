#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

COUNT=$( ( tr -cd  'c' | wc -c ) <<FINE
La civetta mattutina casca in piedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
FINE
)

echo "trovati $COUNT caratteri c"

