NAME="$(cat pack.json | jq -r .name)"
VERSION="$(cat pack.json | jq -r .version)"
MC_VERSION="$(cat pack.json | jq -r .mc_version)"

FILENAME="${NAME}-${MC_VERSION}-${VERSION}.zip"
git archive -o $FILENAME --add-file "./LICENSE" HEAD:src
