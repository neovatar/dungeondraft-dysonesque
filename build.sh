#!/usr/bin/env bash
set -euox pipefail

mkdir -p build
rm -rf build/*

dungeondraft-pack -O src build
cp LICENSE.txt build
cp README.md build

pushd build
zip Dysonesque.zip *
popd