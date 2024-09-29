list(APPEND CMAKE_PREFIX_PATH extern/gtest/lib/cmake/GTest)
find_package(GTest REQUIRED)

if (${GTest_FOUND})
    message(STATUS "Found GTest")
endif()
