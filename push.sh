#!/bin/sh

set -e

new="${2// /-}.${1##*.}"

mv "$1" "$new"

sed -i "34i $(echo "![${2%.*}]($new)")" readme.md

git add -A

timeout 5s git commit -m ":heavy_plus_sign: Add $2 wallpaper"

git push -u origin main -q

