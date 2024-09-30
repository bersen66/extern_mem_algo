# External memory algorithms

## Build
```
./install_dependencies.sh
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . -j $(nproc)
```

# CMake options
| Option Name       | Description            | Default Value |
|-------------------|------------------------|---------------|
| BUILD_CLIENT_APP  | Build client app       |ON             |
| BUILD_TESTS       | Build tests            | ON            |
| BUILD_BENCHMARKS  | Build benchmarks       | ON            |

