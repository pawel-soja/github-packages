#!/bin/bash

set -e

gpg --list-keys

exit
rm -rf build
mkdir -p build/package
cp -a ./ build/package || true
pushd build/package
# fakeroot debian/rules binary
dpkg-buildpackage -b
popd

ls -l build/
