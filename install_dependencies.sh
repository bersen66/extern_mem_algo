#!/bin/bash

mkdir -p extern 

PROJECT_ROOT="$(pwd)"
BUILD_SCRIPTS_DIR="${PROJECT_ROOT}/build_scripts"
EXTERN_DIR="${PROJECT_ROOT}/extern"
THIRD_PARTY_DIR="${PROJECT_ROOT}/third_party"



echo "========================="
echo "${PROJECT_ROOT}"
echo "${BUILD_SCRIPTS_DIR}"
echo "${EXTERN_DIR}"
echo "${THIRD_PARTY_DIR}"
echo "========================="

export EXTERN_DIR
export THIRD_PARTY_DIR

git submodule update --init --recursive
cd "${BUILD_SCRIPTS_DIR}" || exit 1
./install_arrow.sh 
./install_gtest.sh
./install_benchmark.sh
