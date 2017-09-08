#!/usr/bin/env bash

# trap the Control-C signal and break out of the loop
trap break INT

if [ ! -d "old" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir old
fi
for i in *.png; do
	echo "========================="
    echo Copying "$i"
	cp "$i" old/"$i"
	echo ""
done
for i in *.jpg; do
	echo "========================="
    echo Copying "$i"
	cp "$i" old/"$i"
	echo ""
done
