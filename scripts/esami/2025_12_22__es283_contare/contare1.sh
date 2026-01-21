#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

(grep -o 'c' | wc -l ) <<FINE
La civetta mattutina casca in piedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatre trentini entrarono a Trento trotterellando.
FINE

