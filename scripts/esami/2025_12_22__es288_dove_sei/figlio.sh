#!/bin/bash
if (( $# != 1 )) ; then echo "serve un parametro 1, 2 o 3"; exit 1; fi
echo "directory passata $1"

#INIZIOAGGIUNTE
# PATH=./$1:${PATH}
PATH=$(pwd)/$1:${PATH}

#FINEAGGIUNTE
bastardo.sh

