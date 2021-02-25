#!/bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_NAME="$(basename "${f}")"
	SIZE="$(du -sh "${f}" | cut -f1)"
	WORD_COUNT="$(wc -w "${f}" | cut -d ' ' -f1)"
	echo "Fize name: $FILE_NAME"
	echo "File size: $SIZE"
	echo "Word count: $WORD_COUNT"
  fi
done