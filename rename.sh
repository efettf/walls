
set -e

new="${2// /-}"

suffix="${1##*.}"

mv "$1" "$new.$suffix"

sed -i "34i $(echo "![${2%.*}]($new.$suffix)")" README.md

