#!/bin/bash
IND=$#
while ((IND > 0)); do
 echo "arg $IND is ${!IND}"
 ((IND--))
done
