#!/bin/bash

set -e

gpg --list-keys

echo "KEY $DEB_SIGN_KEYID"

rm -rf build
mkdir -p build/package
cp -a ./ build/package || true
pushd build/package
# fakeroot debian/rules binary
dpkg-buildpackage -b
popd
rm -rf build/package
ls -l build/
