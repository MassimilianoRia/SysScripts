#!/bin/bash

STRINGOUT=""

IND=2
while ((IND <= $#)); do
	if [[ -z "$STRINGOUT" ]]; then
		STRINGOUT="$STRINGOUT${!IND}"
	else
		STRINGOUT="$STRINGOUT ${!IND}"
	fi
	((IND = IND + 2))
done

IND=1
while ((IND <= $#)); do
	STRINGOUT="$STRINGOUT ${!IND}"
	((IND = IND + 2))
done

echo "$STRINGOUT"
