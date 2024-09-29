set(ENGINE_SOURCES)
set(ENGINE_INCLUDE_DIRS)

add_subdirectory(join)
add_subdirectory(order_by)
add_subdirectory(sort)

message(STATUS "Engine sources = ${ENGINE_SOURCES}")
message(STATUS "Engine includes = ${ENGINE_INCLUDE_DIRS}")

add_library(engine ${ENGINE_SOURCES})
target_include_directories(engine PUBLIC ${ENGINE_INCLUDE_DIRS})

target_link_libraries(engine Arrow::arrow_static)

