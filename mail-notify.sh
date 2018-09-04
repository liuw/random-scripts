#!/bin/bash

while IFS= read -r line; do
	#header="$header$line\n"
	if [[ x$line = "xSubject:"* ]]; then
		subject="$line"
	fi
	if [[ x$line = "xFrom:"* ]]; then
		from="$line"
	fi
done

case $from in
	*"Wei Liu"*) exit 0;;
esac

DISPLAY=:0 /usr/bin/notify-send "$from $subject"

exit 0
