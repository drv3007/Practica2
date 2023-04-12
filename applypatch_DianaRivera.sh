#!/bin/bash

# Check if the patch file exists
if [ ! -f "$1" ]; then
    echo "Error: Patch file not found."
    exit 1
fi

# Apply the patch
git apply "$1"

# Check if the patch was applied successfully
if [ $? -eq 0 ]; then
    echo "Patch applied successfully."
else
    echo "Error: Failed to apply patch."
    exit 1
fi
