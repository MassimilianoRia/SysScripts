#!/bin/bash

if (( $# != 2 )); then echo "Uso: $0 arg1 arg2"; else
	find "$1" -name "$2" -print
fi
