#!/bin/bash

echo 'Hello, world!'

INSTALL_DIR="~/programming/itmo/arrow/extern/"
echo "${INSTALL_DIR}"
cd ../third_party/arrow/cpp  || exit 1
mkdir release-build -p && cd release-build || exit 1

cmake .. -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} -DCMAKE_BUILD_TYPE=Release 
make install -j 6


