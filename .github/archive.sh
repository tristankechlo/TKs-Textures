#!/bin/bash
source ./pack.properties
FILENAME="${name}-${mc_version}-${version}.zip"
git archive -o $FILENAME --add-file "./LICENSE" HEAD:src
