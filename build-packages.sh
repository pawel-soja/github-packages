#!/bin/bash

set -e

rm -rf build
mkdir -p build/package
cp -a ./ build/package
pushd build/package
fakeroot debian/rules binary
popd

ls -l build/