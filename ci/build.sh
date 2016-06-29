#!/bin/bash

set -e

VERSION=`cat version/number`

pushd accounts
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp accounts/build/libs/accounts-$VERSION.jar build/.
