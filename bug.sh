#!/bin/bash

# This script attempts to process a file, but it has a subtle error.
# It uses a while loop and reads the file line by line.
# However, it doesn't handle the case where the file is empty correctly.

filename="my_file.txt"

while IFS= read -r line; do
  echo "Processing line: $line"
done < "$filename"

echo "Done processing file."