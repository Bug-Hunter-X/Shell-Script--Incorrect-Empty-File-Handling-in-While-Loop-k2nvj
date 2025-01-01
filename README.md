# Shell Script Bug: Empty File Handling

This repository demonstrates a common error in shell scripting: incorrect handling of empty files when using a `while` loop to read lines from a file.

The `bug.sh` script attempts to process a file line by line.  However, it fails silently if the input file is empty. The `bugSolution.sh` script provides a corrected version.

## How to reproduce

1. Create an empty file named `my_file.txt`.
2. Run `bug.sh`.  Observe that it doesn't produce an error message but also doesn't indicate that the file was empty.
3. Create a file `my_file.txt` with some content. 
4. Run `bug.sh` and observe that it works as intended
5. Run `bugSolution.sh` with an empty or non-empty `my_file.txt`. Observe that it handles both scenarios gracefully.
