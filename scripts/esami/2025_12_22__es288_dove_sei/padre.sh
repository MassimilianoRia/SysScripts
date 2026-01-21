#!/bin/bash

for (( i=0; $i<6; i=$i+1 )) ; do
  (( NUM=1+(RANDOM%3) ))
  ./figlio.sh $NUM
  echo " "
done

