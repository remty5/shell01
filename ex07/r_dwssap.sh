#!/bin/sh
cat /etc/passwd | cut -d ':' -f 1 | awk 'NR%2' | rev | sort -r | head -$FT_LINE2 | tail +$FT_LINE1 | paste -sd ',' | tr '\n' '.'
