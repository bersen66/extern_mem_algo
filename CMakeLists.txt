cmake_minimum_required(VERSION 3.21)
project(arrow_project)

list(APPEND CMAKE_PREFIX_PATH extern/lib/cmake/Arrow)

find_package(Arrow REQUIRED)

add_executable(arr main.cpp)
target_link_libraries(arr Arrow::arrow_static)
