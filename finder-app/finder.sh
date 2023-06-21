#!/bin/bash

# Check if all required arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

# Extract the arguments
filesdir="$1"
searchstr="$2"

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir does not represent a directory on the filesystem."
    exit 1
fi

# Search for matching lines in the files
matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Count the number of files in the directory and all subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $matching_lines"

