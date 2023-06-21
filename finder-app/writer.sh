#!/bin/bash

# Check if all required arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

# Extract the arguments
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the content to the file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: The file could not be created."
    exit 1
fi

