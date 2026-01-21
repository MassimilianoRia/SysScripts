#!/bin/bash

if (( $# != 1 )) ; then echo "serve esattamente un argomento"; exit 1 ; fi

echo "$1" > temp.sh
chmod 700 temp.sh
./temp.sh
# rm -f temp.sh

