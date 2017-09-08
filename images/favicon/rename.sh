#!/usr/bin/env bash

# trap the Control-C signal and break out of the loop
trap break INT

for i in *.png; do
	filename=$(basename "$i")
	extension="${filename##*.}"
	filename="${filename%.*}"
	echo "========================="
	echo "Renaming: \"$i\""
	mv "$i" "$filename"_old.png
	echo ""
done
