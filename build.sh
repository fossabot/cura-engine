#!/bin/bash

# Colors
YELLOW="\033[0;33m"
GRAY="\033[1;30m"
GREEN="\033[0;32m"
RESET="\033[0m"

# Delete existing build directory
BUILD_DIR="build"
if [ -d $BUILD_DIR ]; then
  rm -r $BUILD_DIR
  echo -e "${YELLOW}[WARNING] Deleted existing build!${RESET}"
fi

# Create a build directory
mkdir $BUILD_DIR
cd $BUILD_DIR
echo -e "${GRAY}[INFO] Created build directory.${RESET}"

# Generate makefile via Wasmer
echo Generating makefile...
wasimake cmake -DENABLE_ARCUS=OFF -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF -fno-exceptions ..
echo -e "${GRAY}[INFO] Generated makefiles.${RESET}"

# Build Cura Engine via Wasmer
echo Building...
wasimake make
echo -e "${GREEN}[SUCCESS] Built Cura Engine for WASM!${RESET}"