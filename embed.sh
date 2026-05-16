#!/bin/sh
IFS=""
while read a; do
	if echo "$a" | grep 'EMBED ODEJS\.JS HERE' >/dev/null; then
		cat odejs.js
		echo "embedded = true;"
	else
		echo "$a"
	fi
done < ode.js > ode.offline.js
