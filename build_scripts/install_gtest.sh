GTEST_SRC_DIR="${THIRD_PARTY_DIR}/gtest"
GTEST_INSTALL_DIR="${EXTERN_DIR}/gtest"

cd "${GTEST_SRC_DIR}" || exit 1
mkdir release-build -p && cd release-build || exit 1

cmake .. -DCMAKE_INSTALL_PREFIX="${GTEST_INSTALL_DIR}" -DCMAKE_BUILD_TYPE=Release
make install -j 8
