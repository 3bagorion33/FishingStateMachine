#!/bin/bash

VERSION="$(cat FishingStateMachine.txt  | grep "## Version:" | cut -d":" -f2 | xargs)"
sed -i "s/RELEASE_TAG:.*/RELEASE_TAG: v$VERSION/" release_config.yml
rm FishingStateMachine*.zip
mkdir FishingStateMachine
cp FishingStateMachine.txt FishingStateMachine.lua FishingStateMachine
zip -r FishingStateMachine.zip FishingStateMachine/*
rm -rf FishingStateMachine