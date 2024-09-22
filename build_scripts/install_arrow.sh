#!/bin/bash

echo 'Hello, world!'

echo "${EXTERN_DIR}"
echo "${THIRD_PARTY_DIR}"

ARROW_SRC_DIR="${THIRD_PARTY_DIR}/arrow/cpp"
ARROW_INSTALL_DIR="${EXTERN_DIR}/arrow/"


cd "${ARROW_SRC_DIR}"  || exit 1
mkdir release-build -p && cd release-build || exit 1

cmake .. -DCMAKE_INSTALL_PREFIX="${ARROW_INSTALL_DIR}" -DCMAKE_BUILD_TYPE=Release 
make install -j 8


