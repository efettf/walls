
set -e

new="$2.$3"
newSub="${new// /-}"

mv "$1" "$newSub"

image=$(echo "![${new%.*}]($newSub)")

sed -i "34i $image" README.md

