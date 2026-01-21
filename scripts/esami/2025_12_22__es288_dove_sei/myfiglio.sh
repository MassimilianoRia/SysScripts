#!/bin/bash

if (( $# != 1 )); then echo "Passare un (solo) argomento"; exit 1; fi
if (( $1 < 1 || $1 > 3 )); then echo "Passare un intero compreso tra 1 e 3"; exit 1; fi

OLDPATH="${PATH}"
NEWFRAG=$(pwd)
PATH="${PATH}:${NEWFRAG}/$1"

bastardo.sh

PATH="${OLDPATH}"
