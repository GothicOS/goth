#!/usr/bin/bash

# Good stuff. Helps whenever there's even a little error.
set -euo pipefail

# Change $PWD for x86_64 arch
echo "Changing $PWD to $PWD/any..."
cd any

# Check if database files already exist.
if [[ -f "goth.db" ]] && [[ -f "goth.files" ]]; 
then
	echo "Database files exist, removing..."
	rm -v goth.db
	rm -v goth.files
else
	echo "Database files do not exist, skipping..."
fi

# Build the repo db
echo "Building the database files..."
repo-add -n -R goth.db.tar.xz *.pkg.tar.zst

# Remove the symlink files
echo "Removing symlink files..."
rm -v goth.db
rm -v goth.files

# Rename or Move the files same as the symlink file name
echo "Renaming files..."
mv -v goth.db.tar.xz goth.db
mv -v goth.files.tar.xz goth.files

# Finished
echo "Done!"
