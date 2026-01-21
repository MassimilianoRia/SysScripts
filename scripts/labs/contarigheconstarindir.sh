#!/bin/bash

counter=0
for file in /usr/include/*; do
	if [[ -r "$file" && -f "$file" ]]; then
		while IFS= read -r riga; do
			if [[ "$riga" == *"*"* ]]; then
				((counter++))
				printf '\nriga numero %d:\n%s' "$counter" "$riga"
			fi
		done < "$file"
	fi
done
printf '\nabbiamo in totale %d righe con il carattere "*", palle pisello\n' "$counter"
