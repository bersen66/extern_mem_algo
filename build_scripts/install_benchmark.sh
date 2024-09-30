GBENCH_SRC_DIR="${THIRD_PARTY_DIR}/gbench"
GBENCH_INSTALL_DIR="${EXTERN_DIR}/gbench"

cd "${GBENCH_SRC_DIR}" || exit 1
mkdir release-build -p && cd release-build || exit 1

cmake .. -DCMAKE_INSTALL_PREFIX="${GBENCH_INSTALL_DIR}"\
         -DCMAKE_BUILD_TYPE=Release\
         -DBENCHMARK_ENABLE_TESTING=OFF

make install -j 8
