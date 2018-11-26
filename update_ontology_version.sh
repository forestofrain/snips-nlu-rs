#!/usr/bin/env bash

NEW_VERSION=${1?"usage $0 <new version>"}

echo "Updating snips-nlu-ontology versions to version ${NEW_VERSION}"
perl -p -i -e "s/snipsco\/snips-nlu-ontology\".*\$/snipsco\/snips-nlu-ontology\", tag = \"$NEW_VERSION\" }/g" */Cargo.toml
perl -p -i -e "s/compile \"ai.snips:snips-nlu-ontology:.*\"\$/compile \"ai.snips:snips-nlu-ontology:$NEW_VERSION\"/g" */**/build.gradle
