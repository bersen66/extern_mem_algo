list(APPEND CMAKE_PREFIX_PATH extern/gbench/lib/cmake/benchmark)
find_package(benchmark REQUIRED)

if (${benchmark_FOUND})
    message(STATUS "Google.benchmark is found")
endif()    
