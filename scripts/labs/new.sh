#!/bin/bash

# controllo numero argomenti
if (( $# != 1 )); then
    echo "Uso: $0 nomefile"
    exit 1
fi

file="$1"

# se esiste già, esci
if [[ -e "$file" ]]; then
    echo "Errore: il file '$file' esiste già"
    exit 2
fi

# crea il file
if [[ "$file" == *.sh ]]; then
    echo '#!/bin/bash' > "$file"
    chmod 777 "$file"
else
    : > "$file"
fi

# apri con geany
geany "$file" &

