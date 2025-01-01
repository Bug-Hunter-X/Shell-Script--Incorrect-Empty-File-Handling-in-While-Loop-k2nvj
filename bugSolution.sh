#!/bin/bash

# This script demonstrates a solution to the problem of handling empty files
# correctly in a while loop. It explicitly checks for the file's existence and
# size before processing.

filename="my_file.txt"

if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
exit 1
fi

if [ -s "$filename" ]; then
  while IFS= read -r line; do
    echo "Processing line: $line"
done < "$filename"
else
  echo "File '$filename' is empty."
fi

echo "Done processing file."