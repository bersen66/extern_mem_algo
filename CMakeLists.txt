cmake_minimum_required(VERSION 3.21)
project(arrow_project)

include(cmake/setup_arrow.cmake)

add_executable(arr main.cpp)
target_link_libraries(arr Arrow::arrow_static)
