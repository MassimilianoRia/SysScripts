#!/bin/bash
#
# Scrivere uno script bash che riceve come unico argomento il nome di un file di testo.
# Lo script deve verificare che l’argomento sia presente e che il file esista,
# sia un file normale, leggibile e scrivibile.
# Deve stampare a video il contenuto del file prima della modifica,
# quindi modificare il file direttamente duplicando ogni riga
# (ogni riga del file deve comparire due volte in successione),
# e infine stampare a video il contenuto del file dopo la modifica.

if (( $# != 1 )); then echo "Uso: $0 file.txt"; exit 1; fi
if [[ ! ( -w "$1" && -r "$1" ) ]]; then echo "Impossibile aprire $1"; exit 1; fi

RIGHE=$(cat "$1")
echo "${RIGHE}"
: > "$1"

while read -r riga; do
	echo "${riga}" >> "$1"
	echo "${riga}" >> "$1"
done <<< "${RIGHE}"

cat "$1"
