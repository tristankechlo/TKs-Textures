NAME="$(cat pack.json | jq -r .name)"
VERSION="$(cat pack.json | jq -r .version)"

FILENAME="${NAME}-${VERSION}.zip"
git archive -o $FILENAME --add-file "./LICENSE" HEAD:src
