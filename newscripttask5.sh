#!/bin/bash
# Script to process and clean a log file

# Check if the file is provided as an argument
if [ $# -eq 0 ]; then
    echo "No file provided. Please specify the file to process."
    exit 1
fi

# Assign the first argument as the input file
input_file=$1

# Check if the file exists
if [ ! -f "$input_file" ]; then
    echo "File not found!"
    exit 1
fi

# Process the file: remove blank lines and convert semicolons to commas
grep -v '^$' "$input_file" | sed 's/;/,/g' > cleaned_file.txt

# Inform the user
echo "File has been cleaned and saved as cleaned_file.txt"