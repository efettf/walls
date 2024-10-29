#!/bin/sh

set -e

new="${2// /-}.${1##*.}"

mv "$1" "$new"

sed -i "34i $(echo "![${2%.*}]($new)")" README.md

