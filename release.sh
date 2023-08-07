#!/bin/bash

VERSION="$(cat FishingStateMachine.txt  | grep "## Version:" | cut -d":" -f2 | xargs)"
sed -i "s/RELEASE_TAG:.*/RELEASE_TAG: v$VERSION/" release_config.yml
rm FishingStateMachine*.zip
zip FishingStateMachine.zip FishingStateMachine.txt FishingStateMachine.lua
