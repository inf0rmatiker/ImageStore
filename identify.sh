#!/bin/bash

# Renames all the images in a directory to a generated UUID.
# Keeps the original extensions, and works with filenames
# with spaces in them.

cd images; find . -iname "*" | while read file
do

  filename=$(basename -- "$file")
  extension="${filename##*.}"

  uuid=$(uuidgen)

  echo "Renaming $file ---> $uuid.$extension"
  mv "$file" "$uuid.$extension"

done
