#!/bin/sh

set -e

file=$(basename "$1")

curl "$1" >> "$file"

new="${2// /-}.${file##*.}"

mv "$file" "$new"

echo "![${2%.*}]($new)" >> readme.md

git add -A

timeout 5s git commit -m ":heavy_plus_sign: Add $2 wallpaper"

git push -u origin main -q

