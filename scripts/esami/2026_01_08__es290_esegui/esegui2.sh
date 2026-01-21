#!/bin/bash

if (( $# != 1 )) ; then echo "serve esattamente un argomento"; exit 1 ; fi

echo "$1" | /bin/bash

