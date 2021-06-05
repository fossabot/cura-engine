# Build Cura Engine for WASM

# Create a build directory
mkdir build
cd build

# Generate makefile via Wasmer
wasimake cmake -DENABLE_ARCUS=OFF -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF -fno-exceptions ..

# Build Cura Engine via Wasmer
wasimake make