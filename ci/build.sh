#!/bin/bash

set -e

VERSION=`cat version/number`

pushd accounts-service
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp accounts-service/build/libs/accounts-$VERSION.jar build/.
