#!/bin/bash

# leggo una ad una le matricole, 
# per ciascuna matricola controllo 
# se esiste nella directory files1 un file
# nel cui nome c'e' quella matricola.
# Se esiste lo sposto cambiandogli nome.

while read studente matricola altro ; do
  for name in files1/*${matricola}.txt ; do
    if [[ -e ${name} ]] ; then
      # ricordarsi di mettere i doppi apici
      # perche' il nome file puo' contenere spazi.
      cp "$name" files2/${studente}.csv
    fi
  done
done < elenco.txt

