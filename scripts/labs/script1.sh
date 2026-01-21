#!/bin/bash
IND=1
while ((IND <= $#)); do
 echo "arg $IND is ${!IND}"
 ((IND++))
done
./script2.sh "$@"
