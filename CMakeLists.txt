cmake_minimum_required(VERSION 3.21)
project(arrow_project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(cmake/setup_arrow.cmake)

add_subdirectory(src)

