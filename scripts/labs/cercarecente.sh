#!/bin/bash
cache=""
while read -r file; do
	if [[ "$file" -nt "$cache" ]]; then
		cache="$file"
	fi
done < <(find /usr/include/linux/ -mindepth 2 -name "*.h")
echo "$cache"
