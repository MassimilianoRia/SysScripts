#!/bin/bash

sort -nk 2 ./votiok.txt | 
while read Matricola Voto; do
        echo $Voto
done  | uniq -c |
while read occorrenza Voto; do
        echo "$Voto" "$occorrenza"
done


