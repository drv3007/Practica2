#!/bin/bash

# Provide the original and new file paths
echo "Enter the original file path: "
read original_path
echo "Enter the new file path: "
read new_path

# Patch file to modify
echo "Enter the name of the original patch: "
read patch_file

# Specify the patch level
patch_level=1

# Modify the patch file to replace the original path with the new path
sed -i "s|${original_path}|${new_path}|" ${patch_file}

# Apply the modified patch file
patch -p${patch_level} < ${patch_file}

# Create a new patch file with the renamed file
git mv ./README.md ./README_DRV.md
git diff > renamed-file.patch