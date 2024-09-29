cmake_minimum_required(VERSION 3.21)
project(arrow_project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(cmake/init_options.cmake)
include(cmake/setup_arrow.cmake)

if (BUILD_TESTS)
    include(cmake/setup_gtest.cmake)
    enable_testing()
    include(GoogleTest)
endif()

add_subdirectory(src)

