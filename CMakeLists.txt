cmake_minimum_required(VERSION 3.21)
project(arrow_project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(cmake/setup_arrow.cmake)
include(cmake/init_options.cmake)

add_subdirectory(src)

